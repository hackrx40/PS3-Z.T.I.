import './News.css';
import React, { useState, useEffect } from 'react'
import axios from 'axios';

function getNews(searchValue) {
    axios.post('/api/news',
        {
            "search_term": searchValue
        }
    )
        .then((response) => {
            return response.data
        }).catch((error) => {
            console.log(error);
        })
}

export default function News() {
    const [news, setNews] = useState(null);
    const [searchValue, setSearchValue] = useState(null || '');
    const [newsState, setNewsState] = useState('No News Yet');
    const handleSubmit = () => {
        setNews(null)
        setNewsState('Loading News...')
        axios.post('/api/news',
            {
                "search_term": searchValue + 'Stock News'
            }
        )
            .then((response) => {
                setNews(response.data);
                return response.data
            }).catch((error) => {
                console.log(error);
            })
    }

    return (
        <div className='news__container'>
            <h1 className='news__title'>News</h1>
            <input className='news__input' placeholder='Search Keyword (default: Stock News)' onChange={(e) => setSearchValue(e.target.value)} value={searchValue} />
            <div className='news__list'>
                {news === null ? <p className='news__no_news'>{newsState}</p> : <div className='news__list_container'>{news.map((item) => <p key={item}>{item.index} {item}</p>)}</div>}
                <button className='news__button' onClick={() => { handleSubmit() }}>Fetch latest news</button>
            </div>
        </div >
    )
}
