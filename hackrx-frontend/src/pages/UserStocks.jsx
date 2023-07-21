import { useParams } from 'react-router-dom'
import { DUMMY_USERS } from '../Dummy/DummyUsers'
import './UserStocks.css'
import React, { useEffect, useState } from 'react'
import Stock from '../components/UIComponents/Stock/Stock';
import { DUMMY_STOCKS } from '../Dummy/DummyStocks';

const getStocks = (user) => {
    const userStocks = [];
    for (let i = 0; i < (+user.stocksHeldCount); i++) {
        userStocks.push(
            DUMMY_STOCKS.filter((stock) => stock.name === user.stocksHeld[i])
        )
    }
    return userStocks;
}

export default function UserStocks(props) {
    const userId = useParams().userId;

    const identifiedUser = DUMMY_USERS.filter((user) => user.username === userId);
    const [stocks, setStocks] = useState([]);

    useEffect(() => {
        setStocks(getStocks(identifiedUser));
    }, [])
    return (
        <div className='user_stocks__container'>
            <p className='user_stocks__heading'>Showing stocks for <b>{props.username || "Kaustubh Tripathi"}</b></p>
            <div className='user_stocks__held'>
                <p className='user_stocks__held_heading'>Stocks Held</p>
                {
                    // identifiedUser.map((user) => {
                    //     return user.stocksHeld.map(stock => {
                    //         return <p style={{ color: "white" }}>{stock}</p>
                    //     })
                    // })
                    stocks.map(stock => {
                        return <p>{stock.name}</p>
                    })
                }
            </div>
        </div>
    )
}
