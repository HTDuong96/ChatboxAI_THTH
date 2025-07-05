(function () {
  const API_URL = "http://127.0.0.1:8000/chat";
  const HISTORY_URL = "http://127.0.0.1:8000/history";

  let sessionId = localStorage.getItem("chat_session_id");
  if (!sessionId) {
    sessionId = Math.random().toString(36).substring(2) + Date.now().toString(36);
    localStorage.setItem("chat_session_id", sessionId);
  }

  const style = document.createElement("style");
  style.innerHTML = `
    #chatbot-toggle { position: fixed; bottom: 40px; right: 32px; background: #A41e20; color: white; border: none; border-radius: 50%; width: 64px; height: 64px; font-size: 28px; cursor: pointer; z-index: 9998; box-shadow: 0 4px 12px rgba(0,0,0,0.3); }
    #chatbot-widget { position: fixed; bottom: 180px; right: 32px; width: 420px; height: 620px; background: #fff; border-radius: 18px; box-shadow: 0 0 24px rgba(0,0,0,0.18); display: none; flex-direction: column; z-index: 9999; font-family: "Segoe UI", sans-serif; overflow: hidden; }
    #chatbot-widget-header { background: #A41e20; padding: 18px; color: white; font-size: 18px; font-weight: bold; text-align: center; }
    #chatbot-widget-messages { flex: 1; padding: 16px; overflow-y: auto; background: #f1f3f5; display: flex; flex-direction: column; gap: 10px; }
    .chat-msg { max-width: 85%; padding: 12px 18px; border-radius: 18px; white-space: pre-wrap; }
    .user-msg { background: #d1e7dd; align-self: flex-end; text-align: right; }
    .bot-msg { background: #e2e3e5; align-self: flex-start; text-align: left; }
    #chatbot-widget-input { display: flex; padding: 16px; border-top: 1px solid #dee2e6; background: #fff; }
    #chatbot-widget-input input { flex: 1; border: 1px solid #ced4da; border-radius: 12px; padding: 12px; outline: none; margin-right: 10px; font-size: 16px; }
    #chatbot-widget-input button { background: #A41e20; color: white; border: none; border-radius: 12px; padding: 12px 20px; cursor: pointer; font-size: 16px; }
    .suggestion-btn { background: #e9ecef; border: none; border-radius: 12px; padding: 10px 16px; cursor: pointer; font-size: 14px; margin: 4px 0; width: calc(100% - 32px); }
  `;
  document.head.appendChild(style);

  const toggleBtn = document.createElement("button");
  toggleBtn.id = "chatbot-toggle";
  toggleBtn.innerHTML = `
    <svg width="38" height="38" viewBox="0 0 48 48" fill="none">
      <circle cx="24" cy="24" r="22" fill="#fff" stroke="#A41e20" stroke-width="2"/>
      <rect x="10" y="14" width="28" height="16" rx="6" fill="#A41e20"/>
      <rect x="16" y="30" width="16" height="6" rx="3" fill="#A41e20"/>
      <ellipse cx="18" cy="22" rx="2" ry="2" fill="#fff"/>
      <ellipse cx="24" cy="22" rx="2" ry="2" fill="#fff"/>
      <ellipse cx="30" cy="22" rx="2" ry="2" fill="#fff"/>
    </svg>
  `;
  document.body.appendChild(toggleBtn);

  const widget = document.createElement("div");
  widget.id = "chatbot-widget";
  widget.innerHTML = `
    <div id="chatbot-widget-header">
      THTH-AI
      <button id="chatbot-close-btn" style="position:absolute;top:12px;right:18px;background:transparent;border:none;font-size:22px;cursor:pointer;color:#fff;">×</button>
    </div>
    <div id="chatbot-widget-messages"></div>
    <div id="chatbot-widget-input">
      <input type="text" placeholder="Nhập câu hỏi..." />
      <button>Gửi</button>
    </div>
    <div id="suggestions" style="padding: 16px;"></div>
  `;
  document.body.appendChild(widget);

  // Thêm sự kiện cho nút đóng
  const closeBtn = widget.querySelector("#chatbot-close-btn");
  closeBtn.addEventListener("click", () => {
    widget.style.display = "none";
  });

  const input = widget.querySelector("input");
  const button = widget.querySelector('#chatbot-widget-input button'); // Đổi dòng này
  const messagesDiv = widget.querySelector("#chatbot-widget-messages");

  let messageHistory = [
    { role: "system", content: "Bạn là một trợ lý AI thân thiện, nhớ bối cảnh và tên người dùng nếu họ cung cấp." }
  ];

  async function loadHistory() {
    try {
      const res = await fetch(`${HISTORY_URL}/${sessionId}`);
      const data = await res.json();
      data.messages.forEach(m => {
        appendMessage(m.content, m.role === "user" ? "user" : "bot");
        messageHistory.push({ role: m.role, content: m.content });
      });
    } catch (err) {
      console.warn("Không thể tải lịch sử chat");
    }
  }

  toggleBtn.addEventListener("click", async () => {
    const isOpen = widget.style.display === "flex";
    widget.style.display = isOpen ? "none" : "flex";
    if (!isOpen) {
      input.focus();
      if (messageHistory.length === 1) await loadHistory();

      // Nếu chưa có tin nhắn nào, hiển thị câu chào
      if (messagesDiv.childElementCount === 0) {
        appendMessage("Xin chào, bạn muốn tìm hiểu thông tin gì về trường Trung học Thực hành Đại học Sư phạm?", "bot");
      }
    }
  });

  input.addEventListener("keydown", function (e) {
    if (e.key === "Enter" && !e.shiftKey) {
      e.preventDefault();
      button.click();
    }
  });

  function appendMessage(content, sender = "user") {
    const div = document.createElement("div");
    div.className = `chat-msg ${sender === "user" ? "user-msg" : "bot-msg"}`;
    div.textContent = content;
    messagesDiv.appendChild(div);
    messagesDiv.scrollTop = messagesDiv.scrollHeight;
    return div;
  }

  button.addEventListener("click", async () => {
    const msg = input.value.trim();
    if (!msg) return;

    appendMessage(msg, "user");
    messageHistory.push({ role: "user", content: msg });
    input.value = "";

    const typingMsg = appendMessage("Đang trả lời...", "bot");

    try {
      const validMessages = messageHistory.slice(-8).filter(
        m => typeof m.role === "string" && typeof m.content === "string"
      );

      const res = await fetch(API_URL, {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          session_id: sessionId,
          messages: validMessages
        })
      });

      const data = await res.json();
      const reply = data.response || "❌ Không có phản hồi từ server";
      typingMsg.remove();
      appendMessage(reply, "bot");
      messageHistory.push({ role: "assistant", content: reply });
    } catch (err) {
      typingMsg.remove();
      appendMessage("❌ Lỗi kết nối tới server", "bot");
    }
  });

  function sendMessage(msg) {
    input.value = msg;
    button.click();
  }
const suggestions = [
  "Điểm chuẩn đầu vào",
  "Cơ sở vật chất",
  "Học phí lớp 10"
];
  // Hiển thị gợi ý phía trên hoặc dưới khung chat
  suggestions.forEach(text => {
    const btn = document.createElement('button');
    btn.className = 'suggestion-btn';
    btn.textContent = text;
    btn.onclick = () => sendMessage(text); // Hàm gửi tin nhắn
    document.getElementById('suggestions').appendChild(btn);
  });
})();