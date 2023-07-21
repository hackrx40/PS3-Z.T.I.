export const shuffleArray = () => {
    let array = DUMMY_STOCKS
    for (var i = array.length - 1; i > 0; i--) {

        // Generate random number
        var j = Math.floor(Math.random() * (i + 1));

        var temp = array[i];
        array[i] = array[j];
        array[j] = temp;
    }
    return array;
}
export const randomStocks = () => {
    const randomStocks = shuffleArray(DUMMY_STOCKS);
    const newRandomStocks = []
    for (let i = 0; i < 5; i++) {
        newRandomStocks.push(randomStocks[i]);
    }
    return newRandomStocks;
}

export const DUMMY_STOCKS = [
    {
        "id": "s_0001",
        "name": "BRITANNIA",
        "category": "Consumer Food",
        "price": 1361
    },
    {
        "id": "s_0002",
        "name": "INFY",
        "category": "IT Services & Consulting",
        "price": 8800
    },
    {
        "id": "s_0003",
        "name": "KOTAKBANK",
        "category": "Bank - Private",
        "price": 3417
    },
    {
        "id": "s_0004",
        "name": "DRREDDY",
        "category": "Pharmaceuticals & Drugs",
        "price": 4135
    },
    {
        "id": "s_0005",
        "name": "WIPRO",
        "category": "IT Services & Consulting",
        "price": 2156
    },
    {
        "id": "s_0006",
        "name": "TATACONSUM",
        "category": "Tea/Coffee",
        "price": 4053
    },
    {
        "id": "s_0007",
        "name": "ITC",
        "category": "Diversified",
        "price": 2222
    },
    {
        "id": "s_0008",
        "name": "M&M",
        "category": "Automobile - Auto & Truck Manufacturers",
        "price": 4285
    },
    {
        "id": "s_0009",
        "name": "NESTLEIND",
        "category": "Consumer Food",
        "price": 5665
    },
    {
        "id": "s_0010",
        "name": "TITAN",
        "category": "Diamond & Jewellery",
        "price": 7896
    },
    {
        "id": "s_0011",
        "name": "BHARTIARTL",
        "category": "Telecommunication",
        "price": 6225
    },
    {
        "id": "s_0012",
        "name": "TCS",
        "category": "Services & Consulting",
        "price": 3026
    },
    {
        "id": "s_0013",
        "name": "APOLLOHOSP",
        "category": "Healthcare",
        "price": 400
    },
    {
        "id": "s_0014",
        "name": "BAJFINANCE",
        "category": "NBFC",
        "price": 4006
    },
    {
        "id": "s_0015",
        "name": "JSWSTEEL",
        "category": "Iron & Steel",
        "price": 2047
    },
    {
        "id": "s_0016",
        "name": "MARUTI",
        "category": "Automobile",
        "price": 8123
    },
    {
        "id": "s_0017",
        "name": "HINDUNILVR",
        "category": "Household & Personal",
        "price": 331
    },
    {
        "id": "s_0018",
        "name": "TECHM",
        "category": "IT Services & Consulting",
        "price": 2558
    },
    {
        "id": "s_0019",
        "name": "ADANIPORTS",
        "category": "Transport Infrastructure",
        "price": 4898,
        "stockDown": true
    },
    {
        "id": "s_0020",
        "name": "NTPC",
        "category": "Power",
        "price": 9073
    },
    {
        "id": "s_0021",
        "name": "HINDALCO",
        "category": "Iron & Steel",
        "price": 5774
    },
    {
        "id": "s_0022",
        "name": "INDUSINDBK",
        "category": "Bank - Private",
        "price": 2398
    },
    {
        "id": "s_0023",
        "name": "HDFCLIFE",
        "category": "Life & Health Insurance",
        "price": 8154
    },
    {
        "id": "s_0024",
        "name": "TATASTEEL",
        "category": "Iron & Steel",
        "price": 5915
    },
    {
        "id": "s_0025",
        "name": "BPCL",
        "category": "Refineries",
        "price": 6936
    },
    {
        "id": "s_0026",
        "name": "GRASIM",
        "category": "Diversified",
        "price": 6877
    },
    {
        "id": "s_0027",
        "name": "HDFCBANK",
        "category": "Bank - Private",
        "price": 2666
    },
    {
        "id": "s_0028",
        "name": "ONGC",
        "category": "Oil",
        "price": 7720
    },
    {
        "id": "s_0029",
        "name": "SBIN",
        "category": "Bank - Public",
        "price": 5422
    },
    {
        "id": "s_0030",
        "name": "HDFC",
        "category": "Finance - Housing",
        "price": 6034
    },
    {
        "id": "s_0031",
        "name": "EICHERMOT",
        "category": "Automobile",
        "price": 5820
    },
    {
        "id": "s_0032",
        "name": "ICICIBANK",
        "category": "Bank - Private",
        "price": 6921
    },
    {
        "id": "s_0033",
        "name": "AXISBANK",
        "category": "Bank - Private",
        "price": 8366
    },
    {
        "id": "s_0034",
        "name": "RELIANCE",
        "category": "Oil",
        "price": 1352
    },
    {
        "id": "s_0035",
        "name": "BAJAJ-AUTO",
        "category": "Automobile Manufacturing",
        "price": 919
    },
    {
        "id": "s_0036",
        "name": "UPL",
        "category": "Pesticides & Agrochemicals",
        "price": 5006
    },
    {
        "id": "s_0037",
        "name": "LT",
        "category": "Engineering & Construction",
        "price": 1242
    },
    {
        "id": "s_0038",
        "name": "CIPLA",
        "category": "Pharmaceuticals & Drugs",
        "price": 4609
    },
    {
        "id": "s_0039",
        "name": "SUNPHARMA",
        "category": "Pharmaceuticals & Drugs",
        "price": 5392
    },
    {
        "id": "s_0040",
        "name": "BAJAJFINSV",
        "category": "Finance - Investment",
        "price": 7925
    },
    {
        "id": "s_0041",
        "name": "HEROMOTOCO",
        "category": "Automobile - 2 & 3 Wheelers",
        "price": 8311
    },
    {
        "id": "s_0042",
        "name": "DIVISLAB",
        "category": "Pharmaceuticals & Drugs",
        "price": 9200
    },
    {
        "id": "s_0043",
        "name": "POWERGRID",
        "category": "Power Generation/Distribution",
        "price": 7649
    },
    {
        "id": "s_0044",
        "name": "SBILIFE",
        "category": "Life & Health Insurance",
        "price": 3652
    },
    {
        "id": "s_0045",
        "name": "ASIANPAINT",
        "category": "Paints",
        "price": 2919
    },
    {
        "id": "s_0046",
        "name": "ADANIENT",
        "category": "Trading",
        "price": 6917
    },
    {
        "id": "s_0047",
        "name": "TATAMOTORS",
        "category": "Automobile - LCVS/ HVCS",
        "price": 3818
    },
    {
        "id": "s_0048",
        "name": "ULTRACEMCO",
        "category": "Cement",
        "price": 5253
    },
    {
        "id": "s_0049",
        "name": "HCLTECH",
        "category": "IT Services & Consulting",
        "price": 6998
    },
    {
        "id": "s_0050",
        "name": "COALINDIA",
        "category": "Coal",
        "price": 276
    }
]