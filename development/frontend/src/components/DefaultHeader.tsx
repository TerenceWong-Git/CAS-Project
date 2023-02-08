import "./DefaultHeader.css";
import { useNavigate } from "react-router";
import { MdPets } from "react-icons/md";
import { useState } from "react";
import { RxExit } from "react-icons/rx";

export default function Header() {
  const navigate = useNavigate();

  const [isTrigger, setIsTrigger] = useState(false);

  const trigger = () => {
    if (isTrigger === false) {
      setIsTrigger(true);
    } else {
      setIsTrigger(false);
    }
  };

  const logout = () => {
    localStorage.removeItem("token");
    navigate("/");
  };
  return (
    <>
      <div className="headerDefault">
        <div className="headerLogo">
          <img src={"/uploads/banner.png"} alt={""} />
        </div>
        <div className="logOutDefault">
          <div onClick={trigger}>
            <MdPets  style={{color:"#9b6972"}}/>
          </div>
        </div>
        {isTrigger && (
          <div className="logoutCardDefault">
            <div onClick={logout}>
              <RxExit />
            </div>
            <div className="contactUs">12345678</div>
          </div>
        )}
      </div>
    </>
  );
}
