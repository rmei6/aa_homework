import React from 'react';

import {GiphysIndexItem} from './giphys_index_item';

export const GiphysIndex = ({giphys}) => {
    const giphysList = giphys.map( giphy =>
      <GiphysIndexItem key={giphy.id} giphy={giphy} />
      );
      
    return (
      <ul>
        {giphysList}
      </ul>
    );
}