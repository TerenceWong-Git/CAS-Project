import React from "react";
import "./App.css";
import { Button } from "@mui/material";
import { Link } from "react-router-dom";
import { Route, Routes } from "react-router";
import Login from "./pages/auth/Login";
import Register from "./pages/auth/Register";
import PrivateRoute from "./redux/PrivateRoute";

export default function App() {
  return (
    <div className="App">
      <div>
        <Button variant="contained" style={{ marginRight: "2vmin" }}>
          <Link to={"/"} style={{ textDecoration: "none", color: "white" }}>
            Back
          </Link>
        </Button>
        <Button variant="contained" style={{ marginRight: "2vmin" }}>
          <Link to={"/login"} style={{ textDecoration: "none", color: "white" }}>
            Login
          </Link>
        </Button>
        <Button variant="contained">
          <Link to={"/register"} style={{ textDecoration: "none", color: "white" }}>
            Register
          </Link>
        </Button>
      </div>

      <Routes>
        <Route path="/" element={<PrivateRoute />}>
          <Route path="/comments" element={<CommentPage />}></Route>
        </Route>

        <Route path="/map" element={<Map />}></Route>
        <Route path="/login" element={<Login />}></Route>
        <Route path="/register" element={<Register />}></Route>
      </Routes>
    </div>
  );
}
