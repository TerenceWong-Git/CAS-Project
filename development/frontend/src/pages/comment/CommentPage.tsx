import React, { useEffect, useState } from "react";
import { Link } from "react-router-dom";
// import SimpleBottomNavigation from "../../components/FunctionBar";

function CommentPage() {
  const [comments, setComments] = useState<any[]>([]);
  useEffect(() => {
    async function loadData() {
      const res = await fetch(`${process.env.REACT_APP_BACKEND_URL}/comment`);
      const json = await res.json();
      console.log(json);

      setComments(json);
    }
    loadData();
  }, []);

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
    <div>
      CommentPage
      <div>
        <button>
          <Link to={"/createComment"}>建立</Link>
        </button>

        <button onClick={() => setFilter((filter) => ({}))}>全部</button>

        <button onClick={() => setFilter((filter) => ({ ...filter, isThumb: true }))}>好評</button>

        <button onClick={() => setFilter((filter) => ({ ...filter, isThumb: false }))}>差評</button>
      </div>
      <div>
        {filteredComments.map((comment) => (
          <div key={comment.id}>
            <Link to={`/commentDetail/${comment.id}`}>
              <p>{comment.title}</p>
              <p>{comment.map.chiName}</p>
              <p>{comment.user.username}</p>
            </Link>
          </div>
        ))}
      </div>
    </div>
  );
}

export default CommentPage;
