import React, { useEffect, useState } from 'react'
import './Stock.css'
import axios from 'axios';


export default function Stock(props) {
    const [stockPrice, setStockPrice] = useState('');
    const getStockPrice = () => {
        axios.post('/api/stock', {
            stockSymbol: props.stockSymbol
        })
            .then(response => {
                setStockPrice(response.data);
                return response.data
            })
    }

    useEffect(() => {
        setStockPrice(getStockPrice())
    }, [])

    return (
        <div className='stock__container'>
            <div className='stock__row1'>
                <p className={`stock__name ${props.stockDown ? "red" : "green"}`}>{props.name}</p>
                <p className='stock__price'>₹{(stockPrice === null ? 'Nil' : stockPrice)}</p>
            </div>
            <div className='stock__row2'>
                <p className='stock__category'>{props.category}</p>
            </div>
        </div>
    )
}
