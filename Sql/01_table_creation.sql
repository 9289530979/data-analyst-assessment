-- 01_table_creation.sql
-- This file creates raw tables for customers, subscriptions, and events

CREATE TABLE customers (
    customer_id VARCHAR(10),
    signup_date DATE,
    segment VARCHAR(100),
    country VARCHAR(50),
    is_enterprise BOOLEAN
);

CREATE TABLE subscriptions (
    subscription_id VARCHAR(10),
    customer_id VARCHAR(10),
    start_date DATE,
    end_date DATE,
    monthly_price DECIMAL(10,2),
    status VARCHAR(50)    

CREATE TABLE events (
    event_id VARCHAR(10),
    customer_id VARCHAR(10),
    event_type VARCHAR(50),
    event_date DATE,
    source VARCHAR(50)
);
