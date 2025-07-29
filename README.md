# PiggyTrack

Projeto simples para gestão de despesas com backend em Flask, base de dados MariaDB e frontend em Next.js.

## Como usar

### Requisitos

- Docker  
- Docker Compose

### Como levantar

1. Clona o repositório  
2. Executa `docker-compose up --build`  
3. Acede a:  
   - Frontend: [http://localhost:3000](http://localhost:3000)  
   - Backend: [http://localhost:8000](http://localhost:8000)  
   - Base de dados MariaDB na porta 3306 (user e pass no `.env` ou Docker Compose)

### Notas

- A base de dados inicializa com um script SQL (`init.sql`) no container.  
- O backend tem uma rota de teste `/stats` que devolve dados dummy.  
- O frontend liga-se ao backend e mostra os dados.
