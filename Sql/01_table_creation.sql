-- 01_table_creation.sql
-- This file creates raw tables for customers, subscriptions, and events

CREATE TABLE customers (
    customer_id INT,
    signup_date DATE,
    acquisition_channel VARCHAR(100),
    customer_segment VARCHAR(100)
);

CREATE TABLE subscriptions (
    subscription_id INT,
    customer_id INT,
    start_date DATE,
    end_date DATE,
    monthly_price DECIMAL(10,2),
    status VARCHAR(50)
);

CREATE TABLE events (
    event_id INT,
    customer_id INT,
    event_type VARCHAR(50),
    event_date DATE
);
