import React from 'react';

const List = ({drop,water,shelters,youth,matchMarker, lat, lng}) => {
 
  const dropItems = drop.map((item) => {
    return (
      <li key = {item.properties.OBJECTID} className="item" onMouseDown = {() =>
          {
            matchMarker(item.geometry.coordinates[1],item.geometry.coordinates[0]);
          }
        }>
        <h5>{item.properties.NAME}</h5>
        <b>{item.properties.ORGANIZATI}</b>
        <p>{item.properties.Address}</p>
      </li>
    );
  });

  const sheltersItem = shelters.map((item) => {
    return (
      <li key = {item.properties.OBJECTID}  className="item" onMouseDown = {() => {
        matchMarker(item.geometry.coordinates[1],item.geometry.coordinates[0]);
      }
    }>
        <h5>{item.properties.NAME}</h5>
        <b>{item.properties.TYPE2}</b> 
        <b>{item.properties.OFFICE_PHO}</b><br />
        <p>{item.properties.ADDRESS_FU}</p>
      </li>
    );
  });

  const youthItem = youth.map((item) => {
    return (
      <li key = {item.properties.OBJECTID}  className="item" onMouseDown = {() => {
        matchMarker(item.geometry.coordinates[1],item.geometry.coordinates[0]);
      }
    }>
        <h5>{item.properties.AGENCY_NAM}</h5>
        <b>{item.properties.HOURS}</b><br />
        <p>{item.properties.ORGANIZATI}</p>
        <p>{item.properties.ACCESSIBIL}</p>
      </li>
    );
  });

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
