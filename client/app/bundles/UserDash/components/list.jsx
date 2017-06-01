import React from 'react';

const List = ({drop,water,shelters,youth,matchMarker, lat, lng}) => {

  const dropItems = drop.map((item) => {
    return (
      <li key = {item.properties.OBJECTID} className="item" onMouseDown = {() =>
          {
            matchMarker(item.geometry.coordinates[1],item.geometry.coordinates[0]);
          }
        }>
        <h4>{item.properties.NAME}</h4>
        <h4>{item.properties.Address}</h4>        
      </li>
    );
  });

  const sheltersItem = shelters.map((item) => {
    return (
      <li key = {item.properties.OBJECTID}  className="item" onMouseDown = {() => {
        matchMarker(item.geometry.coordinates[1],item.geometry.coordinates[0]);
      }
    }>
        <h4>{item.properties.NAME}</h4>
        <h4>{item.properties.TYPE2}</h4>
        <h5>{item.properties.ADDRESS_FU}</h5>
      </li>
    );s
  });

  const youthItem = youth.map((item) => {
    return (
      <li key = {item.properties.OBJECTID}  className="item" onMouseDown = {() => {
        matchMarker(item.geometry.coordinates[1],item.geometry.coordinates[0]);
      }
    }>
        <h4>{item.properties.AGENCY_NAM}</h4>
        <h4>{item.properties.HOURS}</h4>
        <h5>{item.properties.ACCESSIBIL}</h5>
      </li>
    );
  });

// const waterItem = water.map((item) => {
//   return (
//     <li key = {item.properties.OBJECTID} className="item" onMouseDown = {() => {
//       matchMarker(item.geometry.coordinates[1],item.geometry.coordinates[0]);
//     }
//   }>
//       <h4>{item.properties.ASSET_TYPE}</h4>
//       <h4>{item.properties.ASSET_NAME}</h4>
//     </li>
//   );
// });
  return (
    <ul className="item-wrp">
      {dropItems[0]}
      {sheltersItem[0]}
      {youthItem[0]}
            {dropItems[1]}
      {sheltersItem[1]}
      {youthItem[1]}
            {dropItems[2]}
      {sheltersItem[2]}
            {dropItems[3]}
      {sheltersItem[3]}
      {youthItem[3]}
            {dropItems[4]}
      {sheltersItem[4]}
      {youthItem[4]}
      {dropItems[5]}
      {sheltersItem[5]}
      {youthItem[5]}
      {dropItems[6]}
      {sheltersItem[6]}
      {youthItem[6]}
      {dropItems[7]}
      {sheltersItem[7]}
      {youthItem[7]}
    </ul>
  );
}

export default List;
