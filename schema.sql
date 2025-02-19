-- CREATE TABLE statements for schema.sql

CREATE TABLE companies (
    company_id INT PRIMARY KEY,
    name VARCHAR(255),
    sector VARCHAR(100),
    country VARCHAR(100),
    revenue DECIMAL(15,2))

CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    buyer_id INT,
    seller_id INT,
    deal_date DATE,
    deal_value DECIMAL(15,2),
    energy_type VARCHAR(50),
    FOREIGN KEY (buyer_id) REFERENCES companies(company_id),
    FOREIGN KEY (seller_id) REFERENCES companies(company_id))


CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    company_id INT,
    capacity_mw DECIMAL(10,2),
    country VARCHAR(100),
    status VARCHAR(50),
    FOREIGN KEY (company_id) REFERENCES companies(company_id))


CREATE TABLE financing (
    fund_id INT PRIMARY KEY,
    transaction_id INT,
    investor VARCHAR(255),
    amount DECIMAL(15,2),
    fund_date DATE,
    FOREIGN KEY (transaction_id) REFERENCES transactions(transaction_id))