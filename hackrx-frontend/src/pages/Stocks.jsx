import './Stocks.css'
import React, { useEffect, useState } from 'react'
import { DUMMY_STOCKS } from '../Dummy/DummyStocks'
import Stock from '../components/UIComponents/Stock/Stock';

export default function Stocks() {
    const [searchVal, setSearchVal] = useState('');
    const [stocks, setStocks] = useState(DUMMY_STOCKS);
    const handleClick = () => {
        const selectedStocks = searchVal === '' ? DUMMY_STOCKS : DUMMY_STOCKS.filter((stock) => stock.symbol === searchVal.toUpperCase() + '.NS')
        setStocks(selectedStocks);
    }
    const handleClear = () => {
        setStocks(DUMMY_STOCKS);
    }

    return (
        <div className='stocks__wrapper'>
            <div className='stocks__container'>
                <p className='stocks__title'>All Stocks</p>
                <div className='stocks__search_container'>
                    {stocks.length !== 1 ? <input onChange={(e) => setSearchVal(e.target.value)} value={searchVal} /> : null}
                    {stocks.length === 1 ? <button onClick={() => handleClear()}>Clear</button> : <button onClick={() => handleClick()}>Search</button>}
                </div>
                <div className='stocks__grid'>
                    {stocks.map((stock) => {
                        return <Stock key={stock.id} symbol={stock.symbol} name={stock.name} category={stock.category} />
                    })}
                </div>
            </div>
        </div>
    )
}
