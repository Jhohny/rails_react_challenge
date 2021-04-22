import React from 'react';

export const TableHeader = props => {
  const { headers } = props

  return <thead>
    <tr>
      { headers.map((header)=>{
        return <th key={header}>{header}</th>
      }) }
    </tr>
  </thead>
}

export const TableBody = props => {
  const { items } = props

  return <tbody>
    { items.map((item, index) => {
      return <tr key={index}>
        { item.map((attr) => {
          return <td key={attr}>{attr}</td>
        })}
      </tr>
    })}
  </tbody>
}
