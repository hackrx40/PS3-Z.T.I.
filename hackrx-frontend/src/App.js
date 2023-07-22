import "./App.css";
import React from "react";
import { BrowserRouter, Routes, Route } from "react-router-dom";
// import Stock from "./components/UIComponents/Stock/Stock";
import Stocks from "./pages/Stocks";
import Navbar from "./components/UIComponents/Navbar/Navbar";
import Users from "./pages/Users";
import UserStocks from "./pages/UserStocks";
import News from "./pages/News";
import Stock from "./components/UIComponents/Stock/Stock";
import DummyStocks from "./Dummy/DummyStocks";
import Home from "./pages/Home";
import Login from "./pages/Login";

function App() {
  return (
    <BrowserRouter>
      <Navbar />
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/stocks" element={<Stocks />} />
        <Route path="/stock" element={<Stock stockSymbol="ITCI" />} />
        <Route path="/users" element={<Users />} />
        <Route />
        <Route path="/user/:userId" element={<UserStocks />} />
        <Route path="/news" element={<News />} />
        <Route path="/login" element={<Login />} />
        <Route
          path="*"
          element={
            <h1>
              #404
              <br />
              Page not found!
            </h1>
          }
        />
        {/* <Route path="/users" element={<Users />} />
          <Route path="/user/:userId" element={<UserStocks />} />
          <Route path="/stocks" element={<Stocks />} /> */}
      </Routes>
    </BrowserRouter>
  );
}

export default App;
