import { createBrowserRouter } from "react-router-dom";
import { RegisterPage } from "../modules/auth/register";
import { LoginPage } from "../modules/auth/login";
import { ChatPage } from "../modules/chat";
import { PageNotFound } from "../components/page-not-found";
import { WelcomePage } from "../modules/welcome";

export const router = createBrowserRouter([
  {
    path: "/",
    element: <WelcomePage />,
    errorElement: <PageNotFound />,
  },
  {
    path: "/login",
    element: <LoginPage />,
  },
  {
    path: "/register",
    element: <RegisterPage />,
  },
  {
    path: "/chat",
    element: <ChatPage />,
  },
]);
