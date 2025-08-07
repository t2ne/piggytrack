# PiggyTrack 🐷📊

A simple expense management app with:

- 🖥️ **Frontend**: Next.js  
- 🐍 **Backend**: Flask  
- 🛢️ **Database**: MariaDB  

---

## 🚀 How to Use

### Requirements

- Docker  
- Docker Compose

---

### 🔧 Setup Instructions

1. Clone the repository:
```bash
git clone https://github.com/t2ne/piggytrack.git
```

2. Navigate to the project folder:
```bash
cd piggytrack
```

3. Build and start the containers:
```bash
docker-compose up --build
```

---

### 🌐 Access

- **Frontend**: [http://localhost:3000](http://localhost:3000)  
- **Backend API**: [http://localhost:8000](http://localhost:8000)  
- **MariaDB**: Running on port `3306`  
  - Credentials are defined in the `.env` file or directly in the `docker-compose.yml`

---

### 📝 Notes

- The database container runs an init script (`init.sql`) to pre-fill the database.
- The backend exposes a test route at `/stats` that returns dummy data.
- The frontend connects to the backend and displays the received data.

---

## 🙋‍♂️ Author

[@t2ne](https://github.com/t2ne)

