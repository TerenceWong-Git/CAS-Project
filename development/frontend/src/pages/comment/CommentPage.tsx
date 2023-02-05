import React, { useEffect, useState } from "react";
import { Link } from "react-router-dom";
import "../comment/css/Comment.css";
import { BiUser } from "react-icons/bi";
import { GiHollowCat } from "react-icons/gi";
import { MdOutlineThumbUpOffAlt, MdOutlineThumbDown } from "react-icons/md";

function CommentPage() {
  const [comments, setComments] = useState<any[]>([]);
  useEffect(() => {
    async function loadData() {
      const res = await fetch(`${process.env.REACT_APP_BACKEND_URL}/comment`);
      const data = await res.json();
      setComments(data);
    }
    loadData();
  }, []);
  console.log(comments);

  const [filter, setFilter] = useState<{
    isThumb?: boolean;
  }>({});
  const filteredComments = comments.filter((comment) => {
    let isFiltered = true;
    for (let key in filter) {
      // @ts-ignore
      if (comment[key] !== filter[key]) {
        isFiltered = false;
        break;
      }
    }
    return isFiltered;
  });

  return (
    <div className="comment-page">
      <div className="comment-button-area">
        <button>
          <Link to={"createComment"} style={{ color: "#FCFCFC" }}>
            建立
          </Link>
        </button>

        <button>
          <Link to={`myComments`} style={{ color: "#FCFCFC" }}>
            我的評論
          </Link>
        </button>

        <button onClick={() => setFilter((filter) => ({}))}>全部</button>

        <button
          onClick={() => setFilter((filter) => ({ ...filter, isThumb: true }))}
        >
          <MdOutlineThumbUpOffAlt />
          好評
        </button>

        <button
          onClick={() => setFilter((filter) => ({ ...filter, isThumb: false }))}
        >
          <MdOutlineThumbDown />
          差評
        </button>
      </div>
      <div className="comment-body">
        {filteredComments.map((comment) => (
          <div className="comment-card-container" key={comment.id}>
            <Link
              to={`commentDetail/${comment.id}`}
              style={{ color: "#262220" }}
              className="comment-card"
            >
              {comment.CommentImg.length > 0 ? (
                <div className="comment-image">
                  <img
                    src={`${process.env.REACT_APP_BACKEND_URL}/upload/${comment.CommentImg?.[0].name}`}
                    alt=""
                  />
                </div>
              ) : (
                <div className="comment-image">
                  <GiHollowCat size={70} />
                </div>
              )}
              <div className="comment-detail">
                <div>{comment.title}</div>
                <div>
                  {comment.isThumb ? (
                    <span>
                      <MdOutlineThumbUpOffAlt />
                      &nbsp;
                      {comment.map.chiName}
                    </span>
                  ) : (
                    <span>
                      <MdOutlineThumbDown />
                      &nbsp;
                      {comment.map.chiName}
                    </span>
                  )}
                  <span>
                    <BiUser />
                    &nbsp;
                    {comment.user.username}
                  </span>
                </div>
              </div>
            </Link>
          </div>
        ))}
      </div>
    </div>
  );
}

export default CommentPage;
