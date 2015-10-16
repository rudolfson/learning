newOrder.toBuy(100.shares.of('IBM')) {
    limitPrice  300
    allOrNone   true
    valuesAs    { qty, unitPrice -> qty * unitPrice - 500 }
}

