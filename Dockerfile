FROM H1M4N5HU0P/MAFIA-USERBOT:latest

# clonning repo 
RUN git clone https://github.com/amanrajput2001/MAFIA-USERBOT.git /root/userbot

RUN pip install --upgrade pip

# working directory 
WORKDIR /root/userbot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","userbot"]
