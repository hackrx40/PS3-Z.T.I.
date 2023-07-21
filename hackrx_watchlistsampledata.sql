-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: hackrx
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `watchlistsampledata`
--

DROP TABLE IF EXISTS `watchlistsampledata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `watchlistsampledata` (
  `userId` varchar(3) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `stockId` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `sector` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `watchlistsampledata`
--

LOCK TABLES `watchlistsampledata` WRITE;
/*!40000 ALTER TABLE `watchlistsampledata` DISABLE KEYS */;
INSERT INTO `watchlistsampledata` VALUES ('C1','BHARTIARTL','Telecommunication - Service Provider'),('C1','POWERGRID','Power Generation/Distribution'),('C1','ICICIBANK','Bank - Private'),('C1','ASIANPAINT','Paints'),('C1','BRITANNIA','Consumer Food'),('C1','BPCL','Refineries'),('C1','BAJAJ-AUTO','Automobile - 2 & 3 Wheelers'),('C1','DRREDDY','Pharmaceuticals & Drugs'),('C1','ITC','Diversified'),('C1','HINDALCO','Iron & Steel'),('C1','HINDUNILVR','Household & Personal Products'),('C1','HDFC','Finance - Housing'),('C1','NESTLEIND','Consumer Food'),('C1','SUNPHARMA','Pharmaceuticals & Drugs'),('C1','ADANIENT','Trading'),('C1','KOTAKBANK','Bank - Private'),('C1','BAJAJFINSV','Finance - Investment'),('C1','MARUTI','Automobile - Passenger Cars'),('C1','TITAN','Diamond & Jewellery'),('C1','TATASTEEL','Iron & Steel'),('C1','TCS','IT Services & Consulting'),('C1','APOLLOHOSP','Hospital & Healthcare Services'),('C1','COALINDIA','Coal'),('C1','BAJFINANCE','NBFC'),('C1','LT','Engineering & Construction'),('C1','RELIANCE','Oil Exploration and Production'),('C1','WIPRO','IT Services & Consulting'),('C1','INFY','IT Services & Consulting'),('C1','GRASIM','Diversified'),('C1','TATAMOTORS','Automobile - LCVS/ HVCS'),('C1','HDFCLIFE','Life & Health Insurance'),('C1','TATACONSUM','Tea/Coffee'),('C1','INDUSINDBK','Bank - Private'),('C1','M&M','Automobile - Auto & Truck Manufacturers'),('C1','DIVISLAB','Pharmaceuticals & Drugs'),('C1','HCLTECH','IT Services & Consulting'),('C1','HEROMOTOCO','Automobile - 2 & 3 Wheelers'),('C1','UPL','Pesticides & Agrochemicals'),('C1','ADANIPORTS','Transport Infrastructure'),('C10','HEROMOTOCO','Automobile - 2 & 3 Wheelers'),('C10','BAJFINANCE','NBFC'),('C10','ADANIPORTS','Transport Infrastructure'),('C10','BHARTIARTL','Telecommunication - Service Provider'),('C10','UPL','Pesticides & Agrochemicals'),('C10','JSWSTEEL','Iron & Steel'),('C10','INFY','IT Services & Consulting'),('C10','NESTLEIND','Consumer Food'),('C10','LT','Engineering & Construction'),('C10','ITC','Diversified'),('C10','TCS','IT Services & Consulting'),('C10','HDFCLIFE','Life & Health Insurance'),('C10','TATAMOTORS','Automobile - LCVS/ HVCS'),('C10','ASIANPAINT','Paints'),('C10','NTPC','Power Generation/Distribution'),('C10','ADANIENT','Trading'),('C10','HDFC','Finance - Housing'),('C10','POWERGRID','Power Generation/Distribution'),('C10','TITAN','Diamond & Jewellery'),('C10','SUNPHARMA','Pharmaceuticals & Drugs'),('C10','TATACONSUM','Tea/Coffee'),('C10','BRITANNIA','Consumer Food'),('C10','DIVISLAB','Pharmaceuticals & Drugs'),('C10','INDUSINDBK','Bank - Private'),('C10','ICICIBANK','Bank - Private'),('C10','RELIANCE','Oil Exploration and Production'),('C10','APOLLOHOSP','Hospital & Healthcare Services'),('C10','GRASIM','Diversified'),('C10','SBILIFE','Life & Health Insurance'),('C10','DRREDDY','Pharmaceuticals & Drugs'),('C10','M&M','Automobile - Auto & Truck Manufacturers'),('C10','TECHM','IT Services & Consulting'),('C10','COALINDIA','Coal'),('C10','ULTRACEMCO','Cement'),('C10','HINDUNILVR','Household & Personal Products'),('C10','HCLTECH','IT Services & Consulting'),('C10','ONGC','Oil Exploration and Production'),('C10','BAJAJ-AUTO','Automobile - 2 & 3 Wheelers'),('C10','TATASTEEL','Iron & Steel'),('C10','BPCL','Refineries'),('C10','CIPLA','Pharmaceuticals & Drugs'),('C10','HINDALCO','Iron & Steel'),('C10','SBIN','Bank - Public'),('C10','WIPRO','IT Services & Consulting'),('C10','AXISBANK','Bank - Private'),('C10','HDFCBANK','Bank - Private'),('C10','KOTAKBANK','Bank - Private'),('C10','EICHERMOT','Automobile - LCVS/ HVCS'),('C10','BAJAJFINSV','Finance - Investment'),('C10','MARUTI','Automobile - Passenger Cars'),('C11','DIVISLAB','Pharmaceuticals & Drugs'),('C11','GRASIM','Diversified'),('C11','MARUTI','Automobile - Passenger Cars'),('C11','NESTLEIND','Consumer Food'),('C11','ICICIBANK','Bank - Private'),('C11','COALINDIA','Coal'),('C11','ULTRACEMCO','Cement'),('C11','BHARTIARTL','Telecommunication - Service Provider'),('C11','DRREDDY','Pharmaceuticals & Drugs'),('C11','HINDALCO','Iron & Steel'),('C11','SUNPHARMA','Pharmaceuticals & Drugs'),('C11','M&M','Automobile - Auto & Truck Manufacturers'),('C11','BRITANNIA','Consumer Food'),('C11','HINDUNILVR','Household & Personal Products'),('C11','SBILIFE','Life & Health Insurance'),('C11','AXISBANK','Bank - Private'),('C11','WIPRO','IT Services & Consulting'),('C11','NTPC','Power Generation/Distribution'),('C11','BPCL','Refineries'),('C11','ONGC','Oil Exploration and Production'),('C11','HDFCBANK','Bank - Private'),('C11','HDFC','Finance - Housing'),('C11','TECHM','IT Services & Consulting'),('C11','TATAMOTORS','Automobile - LCVS/ HVCS'),('C11','CIPLA','Pharmaceuticals & Drugs'),('C11','TCS','IT Services & Consulting'),('C11','HDFCLIFE','Life & Health Insurance'),('C11','BAJAJ-AUTO','Automobile - 2 & 3 Wheelers'),('C12','HCLTECH','IT Services & Consulting'),('C12','TCS','IT Services & Consulting'),('C12','TATASTEEL','Iron & Steel'),('C12','KOTAKBANK','Bank - Private'),('C12','TATACONSUM','Tea/Coffee'),('C12','UPL','Pesticides & Agrochemicals'),('C12','AXISBANK','Bank - Private'),('C12','POWERGRID','Power Generation/Distribution'),('C12','CIPLA','Pharmaceuticals & Drugs'),('C12','ULTRACEMCO','Cement'),('C12','HINDALCO','Iron & Steel'),('C12','MARUTI','Automobile - Passenger Cars'),('C12','HDFCBANK','Bank - Private'),('C12','TITAN','Diamond & Jewellery'),('C12','HEROMOTOCO','Automobile - 2 & 3 Wheelers'),('C12','LT','Engineering & Construction'),('C12','RELIANCE','Oil Exploration and Production'),('C12','WIPRO','IT Services & Consulting'),('C12','HDFCLIFE','Life & Health Insurance'),('C12','BAJFINANCE','NBFC'),('C12','HDFC','Finance - Housing'),('C12','EICHERMOT','Automobile - LCVS/ HVCS'),('C13','UPL','Pesticides & Agrochemicals'),('C13','JSWSTEEL','Iron & Steel'),('C13','WIPRO','IT Services & Consulting'),('C13','HDFC','Finance - Housing'),('C13','TITAN','Diamond & Jewellery'),('C13','ADANIPORTS','Transport Infrastructure'),('C13','HINDALCO','Iron & Steel'),('C13','RELIANCE','Oil Exploration and Production'),('C13','HEROMOTOCO','Automobile - 2 & 3 Wheelers'),('C14','KOTAKBANK','Bank - Private'),('C14','ADANIENT','Trading'),('C14','BAJAJFINSV','Finance - Investment'),('C14','WIPRO','IT Services & Consulting'),('C14','HCLTECH','IT Services & Consulting'),('C14','ONGC','Oil Exploration and Production'),('C14','ICICIBANK','Bank - Private'),('C14','BRITANNIA','Consumer Food'),('C14','HDFC','Finance - Housing'),('C14','TATASTEEL','Iron & Steel'),('C14','TECHM','IT Services & Consulting'),('C14','BAJFINANCE','NBFC'),('C14','BPCL','Refineries'),('C14','TITAN','Diamond & Jewellery'),('C14','HEROMOTOCO','Automobile - 2 & 3 Wheelers'),('C14','ITC','Diversified'),('C14','JSWSTEEL','Iron & Steel'),('C14','HDFCBANK','Bank - Private'),('C14','EICHERMOT','Automobile - LCVS/ HVCS'),('C14','AXISBANK','Bank - Private'),('C14','MARUTI','Automobile - Passenger Cars'),('C14','ASIANPAINT','Paints'),('C14','NTPC','Power Generation/Distribution'),('C14','RELIANCE','Oil Exploration and Production'),('C14','POWERGRID','Power Generation/Distribution'),('C14','ADANIPORTS','Transport Infrastructure'),('C14','HINDALCO','Iron & Steel'),('C14','DRREDDY','Pharmaceuticals & Drugs'),('C14','HDFCLIFE','Life & Health Insurance'),('C14','INFY','IT Services & Consulting'),('C14','APOLLOHOSP','Hospital & Healthcare Services'),('C14','DIVISLAB','Pharmaceuticals & Drugs'),('C14','SBIN','Bank - Public'),('C14','GRASIM','Diversified'),('C14','LT','Engineering & Construction'),('C14','TATAMOTORS','Automobile - LCVS/ HVCS'),('C14','NESTLEIND','Consumer Food'),('C14','TATACONSUM','Tea/Coffee'),('C14','BHARTIARTL','Telecommunication - Service Provider'),('C14','SUNPHARMA','Pharmaceuticals & Drugs'),('C14','TCS','IT Services & Consulting'),('C14','BAJAJ-AUTO','Automobile - 2 & 3 Wheelers'),('C14','CIPLA','Pharmaceuticals & Drugs'),('C14','INDUSINDBK','Bank - Private'),('C14','COALINDIA','Coal'),('C14','M&M','Automobile - Auto & Truck Manufacturers'),('C14','UPL','Pesticides & Agrochemicals'),('C14','ULTRACEMCO','Cement'),('C14','HINDUNILVR','Household & Personal Products'),('C14','SBILIFE','Life & Health Insurance'),('C15','TATACONSUM','Tea/Coffee'),('C15','TCS','IT Services & Consulting'),('C15','AXISBANK','Bank - Private'),('C15','TATAMOTORS','Automobile - LCVS/ HVCS'),('C15','NTPC','Power Generation/Distribution'),('C15','SUNPHARMA','Pharmaceuticals & Drugs'),('C15','SBIN','Bank - Public'),('C15','ULTRACEMCO','Cement'),('C15','HINDUNILVR','Household & Personal Products'),('C15','HEROMOTOCO','Automobile - 2 & 3 Wheelers'),('C15','KOTAKBANK','Bank - Private'),('C15','COALINDIA','Coal'),('C15','BRITANNIA','Consumer Food'),('C15','HCLTECH','IT Services & Consulting'),('C15','BPCL','Refineries'),('C15','ASIANPAINT','Paints'),('C15','EICHERMOT','Automobile - LCVS/ HVCS'),('C15','SBILIFE','Life & Health Insurance'),('C15','MARUTI','Automobile - Passenger Cars'),('C15','BHARTIARTL','Telecommunication - Service Provider'),('C15','CIPLA','Pharmaceuticals & Drugs'),('C15','M&M','Automobile - Auto & Truck Manufacturers'),('C15','APOLLOHOSP','Hospital & Healthcare Services'),('C15','BAJAJFINSV','Finance - Investment'),('C15','LT','Engineering & Construction'),('C15','RELIANCE','Oil Exploration and Production'),('C15','TATASTEEL','Iron & Steel'),('C15','UPL','Pesticides & Agrochemicals'),('C15','HINDALCO','Iron & Steel'),('C15','JSWSTEEL','Iron & Steel'),('C15','INFY','IT Services & Consulting'),('C15','HDFC','Finance - Housing'),('C15','ADANIPORTS','Transport Infrastructure'),('C15','BAJFINANCE','NBFC'),('C15','ITC','Diversified'),('C15','DRREDDY','Pharmaceuticals & Drugs'),('C15','INDUSINDBK','Bank - Private'),('C15','ONGC','Oil Exploration and Production'),('C15','GRASIM','Diversified'),('C15','ICICIBANK','Bank - Private'),('C15','DIVISLAB','Pharmaceuticals & Drugs'),('C15','HDFCBANK','Bank - Private'),('C15','ADANIENT','Trading'),('C15','HDFCLIFE','Life & Health Insurance'),('C15','TECHM','IT Services & Consulting'),('C15','TITAN','Diamond & Jewellery'),('C15','BAJAJ-AUTO','Automobile - 2 & 3 Wheelers'),('C15','POWERGRID','Power Generation/Distribution'),('C15','WIPRO','IT Services & Consulting'),('C15','NESTLEIND','Consumer Food'),('C16','INDUSINDBK','Bank - Private'),('C16','COALINDIA','Coal'),('C16','MARUTI','Automobile - Passenger Cars'),('C16','HEROMOTOCO','Automobile - 2 & 3 Wheelers'),('C16','BAJFINANCE','NBFC'),('C16','BAJAJ-AUTO','Automobile - 2 & 3 Wheelers'),('C16','APOLLOHOSP','Hospital & Healthcare Services'),('C16','RELIANCE','Oil Exploration and Production'),('C16','DIVISLAB','Pharmaceuticals & Drugs'),('C16','SBILIFE','Life & Health Insurance'),('C16','TITAN','Diamond & Jewellery'),('C16','HDFCBANK','Bank - Private'),('C16','TATASTEEL','Iron & Steel'),('C16','ADANIPORTS','Transport Infrastructure'),('C16','TATACONSUM','Tea/Coffee'),('C16','HINDUNILVR','Household & Personal Products'),('C16','GRASIM','Diversified'),('C16','TATAMOTORS','Automobile - LCVS/ HVCS'),('C16','BAJAJFINSV','Finance - Investment'),('C16','INFY','IT Services & Consulting'),('C16','LT','Engineering & Construction'),('C16','POWERGRID','Power Generation/Distribution'),('C16','BPCL','Refineries'),('C16','BRITANNIA','Consumer Food'),('C16','CIPLA','Pharmaceuticals & Drugs'),('C16','SBIN','Bank - Public'),('C16','ITC','Diversified'),('C16','TECHM','IT Services & Consulting'),('C16','KOTAKBANK','Bank - Private'),('C16','NTPC','Power Generation/Distribution'),('C16','NESTLEIND','Consumer Food'),('C16','HDFCLIFE','Life & Health Insurance'),('C16','ONGC','Oil Exploration and Production'),('C16','ASIANPAINT','Paints'),('C16','BHARTIARTL','Telecommunication - Service Provider'),('C16','ICICIBANK','Bank - Private'),('C16','AXISBANK','Bank - Private'),('C16','UPL','Pesticides & Agrochemicals'),('C16','TCS','IT Services & Consulting'),('C16','WIPRO','IT Services & Consulting'),('C16','HDFC','Finance - Housing'),('C16','EICHERMOT','Automobile - LCVS/ HVCS'),('C16','HCLTECH','IT Services & Consulting'),('C16','M&M','Automobile - Auto & Truck Manufacturers'),('C16','JSWSTEEL','Iron & Steel'),('C16','SUNPHARMA','Pharmaceuticals & Drugs'),('C16','ADANIENT','Trading'),('C16','ULTRACEMCO','Cement'),('C16','HINDALCO','Iron & Steel'),('C16','DRREDDY','Pharmaceuticals & Drugs'),('C17','JSWSTEEL','Iron & Steel'),('C17','BAJAJ-AUTO','Automobile - 2 & 3 Wheelers'),('C17','SBILIFE','Life & Health Insurance'),('C17','POWERGRID','Power Generation/Distribution'),('C17','HDFCLIFE','Life & Health Insurance'),('C17','BPCL','Refineries'),('C17','ADANIENT','Trading'),('C17','ASIANPAINT','Paints'),('C17','NESTLEIND','Consumer Food'),('C17','UPL','Pesticides & Agrochemicals'),('C17','TATACONSUM','Tea/Coffee'),('C17','MARUTI','Automobile - Passenger Cars'),('C17','CIPLA','Pharmaceuticals & Drugs'),('C17','TCS','IT Services & Consulting'),('C17','ONGC','Oil Exploration and Production'),('C17','BRITANNIA','Consumer Food'),('C17','RELIANCE','Oil Exploration and Production'),('C17','TECHM','IT Services & Consulting'),('C17','BAJAJFINSV','Finance - Investment'),('C17','INDUSINDBK','Bank - Private'),('C17','ULTRACEMCO','Cement'),('C17','SBIN','Bank - Public'),('C17','COALINDIA','Coal'),('C17','BHARTIARTL','Telecommunication - Service Provider'),('C17','INFY','IT Services & Consulting'),('C17','HDFC','Finance - Housing'),('C17','WIPRO','IT Services & Consulting'),('C17','ICICIBANK','Bank - Private'),('C17','M&M','Automobile - Auto & Truck Manufacturers'),('C17','ADANIPORTS','Transport Infrastructure'),('C17','HINDUNILVR','Household & Personal Products'),('C17','TATAMOTORS','Automobile - LCVS/ HVCS'),('C17','NTPC','Power Generation/Distribution'),('C17','EICHERMOT','Automobile - LCVS/ HVCS'),('C17','DRREDDY','Pharmaceuticals & Drugs'),('C17','HEROMOTOCO','Automobile - 2 & 3 Wheelers'),('C17','APOLLOHOSP','Hospital & Healthcare Services'),('C17','AXISBANK','Bank - Private'),('C17','HDFCBANK','Bank - Private'),('C17','HCLTECH','IT Services & Consulting'),('C17','KOTAKBANK','Bank - Private'),('C17','ITC','Diversified'),('C17','GRASIM','Diversified'),('C17','TATASTEEL','Iron & Steel'),('C17','LT','Engineering & Construction'),('C17','HINDALCO','Iron & Steel'),('C17','DIVISLAB','Pharmaceuticals & Drugs'),('C17','BAJFINANCE','NBFC'),('C17','SUNPHARMA','Pharmaceuticals & Drugs'),('C17','TITAN','Diamond & Jewellery'),('C18','LT','Engineering & Construction'),('C18','ITC','Diversified'),('C18','BRITANNIA','Consumer Food'),('C18','BAJAJ-AUTO','Automobile - 2 & 3 Wheelers'),('C18','ONGC','Oil Exploration and Production'),('C18','POWERGRID','Power Generation/Distribution'),('C18','INFY','IT Services & Consulting'),('C18','HINDALCO','Iron & Steel'),('C18','HCLTECH','IT Services & Consulting'),('C18','ADANIENT','Trading'),('C18','BHARTIARTL','Telecommunication - Service Provider'),('C18','BAJAJFINSV','Finance - Investment'),('C18','DRREDDY','Pharmaceuticals & Drugs'),('C18','AXISBANK','Bank - Private'),('C18','HEROMOTOCO','Automobile - 2 & 3 Wheelers'),('C18','SBIN','Bank - Public'),('C18','TATASTEEL','Iron & Steel'),('C18','BAJFINANCE','NBFC'),('C18','BPCL','Refineries'),('C19','SBIN','Bank - Public'),('C19','DRREDDY','Pharmaceuticals & Drugs'),('C19','TITAN','Diamond & Jewellery'),('C19','TATASTEEL','Iron & Steel'),('C19','ADANIPORTS','Transport Infrastructure'),('C19','KOTAKBANK','Bank - Private'),('C19','AXISBANK','Bank - Private'),('C19','BAJAJ-AUTO','Automobile - 2 & 3 Wheelers'),('C19','GRASIM','Diversified'),('C19','JSWSTEEL','Iron & Steel'),('C19','BAJAJFINSV','Finance - Investment'),('C19','BHARTIARTL','Telecommunication - Service Provider'),('C19','SUNPHARMA','Pharmaceuticals & Drugs'),('C19','TATAMOTORS','Automobile - LCVS/ HVCS'),('C19','M&M','Automobile - Auto & Truck Manufacturers'),('C19','HDFCBANK','Bank - Private'),('C19','INDUSINDBK','Bank - Private'),('C19','CIPLA','Pharmaceuticals & Drugs'),('C19','HINDALCO','Iron & Steel'),('C19','HDFCLIFE','Life & Health Insurance'),('C19','COALINDIA','Coal'),('C19','NTPC','Power Generation/Distribution'),('C19','WIPRO','IT Services & Consulting'),('C19','TECHM','IT Services & Consulting'),('C19','ONGC','Oil Exploration and Production'),('C19','ITC','Diversified'),('C19','DIVISLAB','Pharmaceuticals & Drugs'),('C19','ULTRACEMCO','Cement'),('C19','HINDUNILVR','Household & Personal Products'),('C19','UPL','Pesticides & Agrochemicals'),('C19','TATACONSUM','Tea/Coffee'),('C19','TCS','IT Services & Consulting'),('C19','SBILIFE','Life & Health Insurance'),('C19','NESTLEIND','Consumer Food'),('C19','MARUTI','Automobile - Passenger Cars'),('C19','POWERGRID','Power Generation/Distribution'),('C19','BAJFINANCE','NBFC'),('C19','HEROMOTOCO','Automobile - 2 & 3 Wheelers'),('C19','ASIANPAINT','Paints'),('C19','EICHERMOT','Automobile - LCVS/ HVCS'),('C19','BPCL','Refineries'),('C19','ADANIENT','Trading'),('C19','RELIANCE','Oil Exploration and Production'),('C19','INFY','IT Services & Consulting'),('C19','HCLTECH','IT Services & Consulting'),('C19','HDFC','Finance - Housing'),('C19','BRITANNIA','Consumer Food'),('C19','APOLLOHOSP','Hospital & Healthcare Services'),('C19','LT','Engineering & Construction'),('C19','ICICIBANK','Bank - Private'),('C2','INFY','IT Services & Consulting'),('C2','NTPC','Power Generation/Distribution'),('C2','CIPLA','Pharmaceuticals & Drugs'),('C2','ONGC','Oil Exploration and Production'),('C2','HDFCBANK','Bank - Private'),('C2','TITAN','Diamond & Jewellery'),('C2','ADANIPORTS','Transport Infrastructure'),('C2','ULTRACEMCO','Cement'),('C2','NESTLEIND','Consumer Food'),('C2','POWERGRID','Power Generation/Distribution'),('C2','TATASTEEL','Iron & Steel'),('C2','EICHERMOT','Automobile - LCVS/ HVCS'),('C2','TATACONSUM','Tea/Coffee'),('C2','INDUSINDBK','Bank - Private'),('C2','JSWSTEEL','Iron & Steel'),('C2','LT','Engineering & Construction'),('C2','SBIN','Bank - Public'),('C2','ADANIENT','Trading'),('C2','HEROMOTOCO','Automobile - 2 & 3 Wheelers'),('C2','DIVISLAB','Pharmaceuticals & Drugs'),('C2','HDFCLIFE','Life & Health Insurance'),('C2','HCLTECH','IT Services & Consulting'),('C2','BAJAJFINSV','Finance - Investment'),('C2','SBILIFE','Life & Health Insurance'),('C2','ICICIBANK','Bank - Private'),('C2','ASIANPAINT','Paints'),('C2','BRITANNIA','Consumer Food'),('C2','BHARTIARTL','Telecommunication - Service Provider'),('C2','COALINDIA','Coal'),('C2','DRREDDY','Pharmaceuticals & Drugs'),('C2','ITC','Diversified'),('C2','TATAMOTORS','Automobile - LCVS/ HVCS'),('C2','MARUTI','Automobile - Passenger Cars'),('C2','M&M','Automobile - Auto & Truck Manufacturers'),('C2','BPCL','Refineries'),('C2','HDFC','Finance - Housing'),('C2','TECHM','IT Services & Consulting'),('C2','SUNPHARMA','Pharmaceuticals & Drugs'),('C2','HINDALCO','Iron & Steel'),('C2','HINDUNILVR','Household & Personal Products'),('C2','APOLLOHOSP','Hospital & Healthcare Services'),('C20','TATAMOTORS','Automobile - LCVS/ HVCS'),('C20','HINDUNILVR','Household & Personal Products'),('C20','SBILIFE','Life & Health Insurance'),('C20','ICICIBANK','Bank - Private'),('C20','DIVISLAB','Pharmaceuticals & Drugs'),('C20','TECHM','IT Services & Consulting'),('C20','APOLLOHOSP','Hospital & Healthcare Services'),('C20','ADANIENT','Trading'),('C20','GRASIM','Diversified'),('C20','BAJFINANCE','NBFC'),('C21','HDFCLIFE','Life & Health Insurance'),('C21','CIPLA','Pharmaceuticals & Drugs'),('C21','HDFCBANK','Bank - Private'),('C21','UPL','Pesticides & Agrochemicals'),('C21','ASIANPAINT','Paints'),('C21','NESTLEIND','Consumer Food'),('C21','ICICIBANK','Bank - Private'),('C21','HCLTECH','IT Services & Consulting'),('C21','ADANIPORTS','Transport Infrastructure'),('C3','SUNPHARMA','Pharmaceuticals & Drugs'),('C3','EICHERMOT','Automobile - LCVS/ HVCS'),('C3','TECHM','IT Services & Consulting'),('C3','M&M','Automobile - Auto & Truck Manufacturers'),('C3','AXISBANK','Bank - Private'),('C3','DIVISLAB','Pharmaceuticals & Drugs'),('C3','GRASIM','Diversified'),('C3','HCLTECH','IT Services & Consulting'),('C3','HEROMOTOCO','Automobile - 2 & 3 Wheelers'),('C3','ASIANPAINT','Paints'),('C3','BRITANNIA','Consumer Food'),('C3','ITC','Diversified'),('C3','HINDUNILVR','Household & Personal Products'),('C3','CIPLA','Pharmaceuticals & Drugs'),('C3','BPCL','Refineries'),('C3','ONGC','Oil Exploration and Production'),('C3','BAJFINANCE','NBFC'),('C3','ADANIPORTS','Transport Infrastructure'),('C3','HDFCBANK','Bank - Private'),('C3','INFY','IT Services & Consulting'),('C3','NTPC','Power Generation/Distribution'),('C3','ULTRACEMCO','Cement'),('C3','APOLLOHOSP','Hospital & Healthcare Services'),('C3','HDFC','Finance - Housing'),('C3','TITAN','Diamond & Jewellery'),('C3','TATASTEEL','Iron & Steel'),('C3','ADANIENT','Trading'),('C3','SBILIFE','Life & Health Insurance'),('C3','RELIANCE','Oil Exploration and Production'),('C3','BHARTIARTL','Telecommunication - Service Provider'),('C3','UPL','Pesticides & Agrochemicals'),('C3','NESTLEIND','Consumer Food'),('C3','POWERGRID','Power Generation/Distribution'),('C4','RELIANCE','Oil Exploration and Production'),('C4','WIPRO','IT Services & Consulting'),('C4','HINDALCO','Iron & Steel'),('C4','HINDUNILVR','Household & Personal Products'),('C4','SBILIFE','Life & Health Insurance'),('C4','HDFCLIFE','Life & Health Insurance'),('C4','TCS','IT Services & Consulting'),('C4','M&M','Automobile - Auto & Truck Manufacturers'),('C4','INFY','IT Services & Consulting'),('C4','NTPC','Power Generation/Distribution'),('C4','ULTRACEMCO','Cement'),('C4','HDFC','Finance - Housing'),('C4','EICHERMOT','Automobile - LCVS/ HVCS'),('C4','TECHM','IT Services & Consulting'),('C4','NESTLEIND','Consumer Food'),('C4','SUNPHARMA','Pharmaceuticals & Drugs'),('C4','ADANIENT','Trading'),('C4','BAJAJ-AUTO','Automobile - 2 & 3 Wheelers'),('C4','ONGC','Oil Exploration and Production'),('C4','HDFCBANK','Bank - Private'),('C4','UPL','Pesticides & Agrochemicals'),('C4','ADANIPORTS','Transport Infrastructure'),('C4','HCLTECH','IT Services & Consulting'),('C4','AXISBANK','Bank - Private'),('C4','SBIN','Bank - Public'),('C4','ICICIBANK','Bank - Private'),('C4','BAJFINANCE','NBFC'),('C4','BHARTIARTL','Telecommunication - Service Provider'),('C4','COALINDIA','Coal'),('C4','BRITANNIA','Consumer Food'),('C4','KOTAKBANK','Bank - Private'),('C4','BAJAJFINSV','Finance - Investment'),('C4','DRREDDY','Pharmaceuticals & Drugs'),('C4','GRASIM','Diversified'),('C4','HEROMOTOCO','Automobile - 2 & 3 Wheelers'),('C5','ULTRACEMCO','Cement'),('C5','APOLLOHOSP','Hospital & Healthcare Services'),('C5','HDFC','Finance - Housing'),('C5','BPCL','Refineries'),('C5','ONGC','Oil Exploration and Production'),('C5','BAJFINANCE','NBFC'),('C5','INFY','IT Services & Consulting'),('C5','BHARTIARTL','Telecommunication - Service Provider'),('C5','ICICIBANK','Bank - Private'),('C5','KOTAKBANK','Bank - Private'),('C5','TATACONSUM','Tea/Coffee'),('C5','INDUSINDBK','Bank - Private'),('C5','NESTLEIND','Consumer Food'),('C5','AXISBANK','Bank - Private'),('C5','TATAMOTORS','Automobile - LCVS/ HVCS'),('C5','HDFCLIFE','Life & Health Insurance'),('C5','SBIN','Bank - Public'),('C5','ASIANPAINT','Paints'),('C5','BRITANNIA','Consumer Food'),('C5','DRREDDY','Pharmaceuticals & Drugs'),('C5','TCS','IT Services & Consulting'),('C5','ADANIPORTS','Transport Infrastructure'),('C5','POWERGRID','Power Generation/Distribution'),('C5','LT','Engineering & Construction'),('C5','WIPRO','IT Services & Consulting'),('C6','BAJAJFINSV','Finance - Investment'),('C6','SBILIFE','Life & Health Insurance'),('C6','UPL','Pesticides & Agrochemicals'),('C6','JSWSTEEL','Iron & Steel'),('C6','BAJAJ-AUTO','Automobile - 2 & 3 Wheelers'),('C6','TATACONSUM','Tea/Coffee'),('C6','M&M','Automobile - Auto & Truck Manufacturers'),('C6','NESTLEIND','Consumer Food'),('C6','SBIN','Bank - Public'),('C6','MARUTI','Automobile - Passenger Cars'),('C7','COALINDIA','Coal'),('C7','HDFCBANK','Bank - Private'),('C7','SBILIFE','Life & Health Insurance'),('C7','LT','Engineering & Construction'),('C7','DRREDDY','Pharmaceuticals & Drugs'),('C7','INDUSINDBK','Bank - Private'),('C7','NTPC','Power Generation/Distribution'),('C7','WIPRO','IT Services & Consulting'),('C7','ASIANPAINT','Paints'),('C7','TITAN','Diamond & Jewellery'),('C76','HINDALCO','Iron & Steel'),('C76','HINDUNILVR','Household & Personal Products'),('C76','CIPLA','Pharmaceuticals & Drugs'),('C76','ULTRACEMCO','Cement'),('C76','HDFC','Finance - Housing'),('C76','DRREDDY','Pharmaceuticals & Drugs'),('C76','AXISBANK','Bank - Private'),('C76','WIPRO','IT Services & Consulting'),('C76','GRASIM','Diversified'),('C76','LT','Engineering & Construction'),('C76','SBIN','Bank - Public'),('C76','ASIANPAINT','Paints'),('C76','BRITANNIA','Consumer Food'),('C76','INDUSINDBK','Bank - Private'),('C76','JSWSTEEL','Iron & Steel'),('C76','TATAMOTORS','Automobile - LCVS/ HVCS'),('C76','HDFCLIFE','Life & Health Insurance'),('C76','MARUTI','Automobile - Passenger Cars'),('C76','COALINDIA','Coal'),('C76','M&M','Automobile - Auto & Truck Manufacturers'),('C76','BAJFINANCE','NBFC'),('C76','SBILIFE','Life & Health Insurance'),('C76','POWERGRID','Power Generation/Distribution'),('C76','KOTAKBANK','Bank - Private'),('C76','TATACONSUM','Tea/Coffee'),('C76','HDFCBANK','Bank - Private'),('C76','ADANIPORTS','Transport Infrastructure'),('C76','NESTLEIND','Consumer Food'),('C76','ADANIENT','Trading'),('C76','RELIANCE','Oil Exploration and Production'),('C8','DRREDDY','Pharmaceuticals & Drugs'),('C8','SUNPHARMA','Pharmaceuticals & Drugs'),('C8','APOLLOHOSP','Hospital & Healthcare Services'),('C8','SBIN','Bank - Public'),('C8','HINDUNILVR','Household & Personal Products'),('C8','JSWSTEEL','Iron & Steel'),('C8','KOTAKBANK','Bank - Private'),('C8','GRASIM','Diversified'),('C8','ITC','Diversified'),('C8','INDUSINDBK','Bank - Private'),('C80','EICHERMOT','Automobile - LCVS/ HVCS'),('C80','TECHM','IT Services & Consulting'),('C80','RELIANCE','Oil Exploration and Production'),('C80','MARUTI','Automobile - Passenger Cars'),('C80','TITAN','Diamond & Jewellery'),('C80','INDUSINDBK','Bank - Private'),('C80','CIPLA','Pharmaceuticals & Drugs'),('C80','ULTRACEMCO','Cement'),('C80','HDFC','Finance - Housing'),('C80','TATASTEEL','Iron & Steel'),('C80','BAJAJFINSV','Finance - Investment'),('C80','COALINDIA','Coal'),('C80','JSWSTEEL','Iron & Steel'),('C80','TATAMOTORS','Automobile - LCVS/ HVCS'),('C80','ITC','Diversified'),('C80','HDFCLIFE','Life & Health Insurance'),('C80','BPCL','Refineries'),('C80','POWERGRID','Power Generation/Distribution'),('C80','LT','Engineering & Construction'),('C80','BAJAJ-AUTO','Automobile - 2 & 3 Wheelers'),('C80','HINDALCO','Iron & Steel'),('C80','ADANIPORTS','Transport Infrastructure'),('C81','APOLLOHOSP','Hospital & Healthcare Services'),('C81','GRASIM','Diversified'),('C81','INDUSINDBK','Bank - Private'),('C81','DIVISLAB','Pharmaceuticals & Drugs'),('C81','M&M','Automobile - Auto & Truck Manufacturers'),('C81','HDFCBANK','Bank - Private'),('C81','TATACONSUM','Tea/Coffee'),('C81','WIPRO','IT Services & Consulting'),('C81','HINDALCO','Iron & Steel'),('C81','DRREDDY','Pharmaceuticals & Drugs'),('C81','HCLTECH','IT Services & Consulting'),('C81','LT','Engineering & Construction'),('C81','SBIN','Bank - Public'),('C81','ADANIENT','Trading'),('C81','ICICIBANK','Bank - Private'),('C81','EICHERMOT','Automobile - LCVS/ HVCS'),('C81','INFY','IT Services & Consulting'),('C81','NESTLEIND','Consumer Food'),('C81','SUNPHARMA','Pharmaceuticals & Drugs'),('C81','JSWSTEEL','Iron & Steel'),('C81','ULTRACEMCO','Cement'),('C81','COALINDIA','Coal'),('C81','AXISBANK','Bank - Private'),('C81','BPCL','Refineries'),('C81','BAJFINANCE','NBFC'),('C81','KOTAKBANK','Bank - Private'),('C81','ASIANPAINT','Paints'),('C81','HINDUNILVR','Household & Personal Products'),('C81','ITC','Diversified'),('C81','TECHM','IT Services & Consulting'),('C81','HDFCLIFE','Life & Health Insurance'),('C81','POWERGRID','Power Generation/Distribution'),('C81','MARUTI','Automobile - Passenger Cars'),('C81','BAJAJ-AUTO','Automobile - 2 & 3 Wheelers'),('C81','RELIANCE','Oil Exploration and Production'),('C81','HEROMOTOCO','Automobile - 2 & 3 Wheelers'),('C81','TCS','IT Services & Consulting'),('C81','TATASTEEL','Iron & Steel'),('C81','CIPLA','Pharmaceuticals & Drugs'),('C81','TITAN','Diamond & Jewellery'),('C81','TATAMOTORS','Automobile - LCVS/ HVCS'),('C81','NTPC','Power Generation/Distribution'),('C81','BRITANNIA','Consumer Food'),('C81','SBILIFE','Life & Health Insurance'),('C81','ADANIPORTS','Transport Infrastructure'),('C81','BAJAJFINSV','Finance - Investment'),('C81','HDFC','Finance - Housing'),('C81','ONGC','Oil Exploration and Production'),('C81','BHARTIARTL','Telecommunication - Service Provider'),('C81','UPL','Pesticides & Agrochemicals'),('C9','ITC','Diversified'),('C9','BAJAJFINSV','Finance - Investment'),('C9','TATAMOTORS','Automobile - LCVS/ HVCS'),('C9','ULTRACEMCO','Cement'),('C9','ADANIENT','Trading'),('C9','TATACONSUM','Tea/Coffee'),('C9','UPL','Pesticides & Agrochemicals'),('C9','HINDALCO','Iron & Steel'),('C9','JSWSTEEL','Iron & Steel');
/*!40000 ALTER TABLE `watchlistsampledata` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-21 14:21:47