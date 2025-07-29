-- Criação da tabela de utilizadores
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Criação da tabela de transações financeiras
CREATE TABLE IF NOT EXISTS transactions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    type ENUM('income', 'expense') NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    description VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- Dados fake para testar
INSERT INTO users (name, email) VALUES 
('António', 'antonio@example.com'),
('Maria', 'maria@example.com');

INSERT INTO transactions (user_id, type, amount, description) VALUES
(1, 'income', 1500.00, 'Salário'),
(1, 'expense', 200.00, 'Supermercado'),
(2, 'expense', 50.00, 'Netflix');
