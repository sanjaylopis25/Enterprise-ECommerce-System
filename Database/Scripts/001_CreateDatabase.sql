-- =============================================
-- Project : Enterprise E-Commerce System
-- Author  : Sanjay Lopis
-- Purpose : Create database
-- =============================================

IF DB_ID('EnterpriseECommerceDB') IS NULL
BEGIN
    CREATE DATABASE EnterpriseECommerceDB;
END
GO