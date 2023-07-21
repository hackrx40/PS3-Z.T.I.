import "./App.css";
import React from "react";
import { BrowserRouter, Routes, Route } from "react-router-dom";
// import Stock from "./components/UIComponents/Stock/Stock";
import Stocks from "./pages/Stocks";
import Navbar from "./components/UIComponents/Navbar/Navbar";
import Users from "./pages/Users";
import UserStocks from "./pages/UserStocks";
import News from "./pages/News";

function App() {
  return (
    <React.StrictMode>
      <BrowserRouter>
        <Navbar />
        <Routes>
          <Route path="/" element={<h1>Home</h1>} />
          <Route path="/stocks" element={<Stocks />} />
          <Route path="/users" element={<Users />} />
          <Route path="/user/:userId" element={<UserStocks />} />
          <Route path="/news" element={<News />} />
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
    </React.StrictMode>
  );
}

export default App;
