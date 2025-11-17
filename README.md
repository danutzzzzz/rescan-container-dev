\# 🐳 Rescan - Docker Edition



<div align="center">



!\[Docker](https://img.shields.io/badge/docker-ready-brightgreen.svg)

!\[License](https://img.shields.io/badge/license-MIT-blue.svg)



\*\*Containerized deployment of Rescan for Plex\*\*



A fully containerized version of \[Rescan](https://github.com/Pukabyte/rescan) - the automated Plex library sync tool that ensures your media files stay in perfect harmony with your Plex server.



</div>



---



\## 📦 What is this?



This repository provides a \*\*Docker-ready implementation\*\* of Rescan, making it simple to deploy and manage as a container. Rescan automatically scans your Plex media libraries for missing files and triggers rescans when needed — perfect for catching imports that your autoscan tools miss.



For full documentation on Rescan's features and capabilities, visit the \[\*\*main Rescan repository\*\*](https://github.com/pkkid/rescan).



---



---



\## 🔧 Docker Compose Example



```yaml

version: '3.8'



services:

&nbsp; rescan:

&nbsp;   container\_name: rescan

&nbsp;   image: ghcr.io/danutzzzzz/rescan-container-dev:latest

&nbsp;   volumes:

&nbsp;     - ./config.ini:/app/config.ini

&nbsp;     - /path/to/your/media:/media:ro

&nbsp;   restart: unless-stopped

&nbsp;   environment:

&nbsp;     - TZ=Europe/London

```



---



\## 📝 Configuration



Create a `config.ini` file with your Plex server details:



```ini

\[plex]

server = http://localhost:32400

token = your\_plex\_token\_here



\[scan]

directories = /path/to/your/media/folder



\[behaviour]

scan\_interval = 5

run\_interval = 24

symlink\_check = true



\[notifications]

enabled = false

discord\_webhook\_url = your\_discord\_webhook\_url\_here

```



For detailed configuration options, see the \[main repository documentation](https://github.com/pkkid/rescan#configuration).



---



\## 🎯 Why Use This Fork?



\- ✅ \*\*Pre-configured Docker setup\*\* - No manual dependency management

\- ✅ \*\*Docker Compose ready\*\* - One command deployment

\- ✅ \*\*Optimized container\*\* - Minimal image size with best practices

\- ✅ \*\*Easy updates\*\* - Pull and rebuild to stay current



---



\## 📚 Documentation \& Support



For comprehensive documentation, feature details, and support:



👉 \*\*\[Visit the main Rescan repository](https://github.com/pkkid/rescan)\*\*



---



\## 🙏 Credits



This is a containerized implementation of \[Rescan](https://github.com/pkkid/rescan) by pkkid. All credit for the core application goes to the original author.



---



\## 📄 License



MIT License - See the \[main repository](https://github.com/pkkid/rescan) for full license details.



---



<div align="center">



\*\*\[⬆ Back to Top](#-rescan---docker-edition)\*\*



Made with 🐳 by \[Pukabyte](https://github.com/Pukabyte)



</div>

