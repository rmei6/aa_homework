import React from 'react';

export const GiphysIndexItem = ({giphy}) => {
  return(
    <li className='giphy-li'>
      <img src={giphy.images.fixed_height.url}/>
    </li>
  );
}