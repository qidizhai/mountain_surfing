import React from 'react';

const render_star = (num) => {
  switch(num){
    case 1:
      return (<li className="rating">🔥</li>);
    case 2:
      return (<li className="rating">🔥🔥</li>);
    case 3:
      return (<li className="rating">🔥🔥🔥</li>);
    case 4:
      return (<li className="rating">🔥🔥🔥🔥</li>);
    case 5:
      return (<li className="rating">🔥🔥🔥🔥🔥</li>);
  }
};

const Review = ({review, users}) => {
  if (!review) return null;
  const { rating, body } = review;

  return (
    <div>
      <ul className="single-review">
        <div className="name-fires">
          <li className="username">{users[review.author_id].username}</li>
          {render_star(rating)}
        </div>
        <li className="comments">{body}</li>
      </ul>
      <div className="add-border"></div>
    </div>
  );
};

export default Review;
