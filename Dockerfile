FROM appleboy/drone-telegram:1.4.1-linux-amd64

# Github labels
LABEL "com.github.actions.name"="Telegram Notify"
LABEL "com.github.actions.description"="Sending a Telegram message"
LABEL "com.github.actions.icon"="message-square"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/telegram-action"
LABEL "homepage"="https://github.com/appleboy/telegram-action"
LABEL "maintainer"="Bo-Yi Wu <appleboy.tw@gmail.com>"
LABEL "version"="0.0.2"

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]