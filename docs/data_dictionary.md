# Data Dictionary — `pizza_sales.csv`

| Column | Type | Description |
|---|---|---|
| `pizza_id` | Integer | Unique ID for each pizza line item |
| `order_id` | Integer | ID of the order (one order can contain multiple pizzas) |
| `pizza_name_id` | String | Short code identifying pizza name + size (e.g. `hawaiian_m`) |
| `quantity` | Integer | Number of units of this pizza in the order line |
| `order_date` | Date (`DD-MM-YYYY`) | Date the order was placed |
| `order_time` | Time (`HH:MM:SS`) | Time the order was placed |
| `unit_price` | Decimal | Price of a single pizza of this type/size |
| `total_price` | Decimal | `unit_price * quantity` |
| `pizza_size` | String | Size of the pizza (`S`, `M`, `L`, `XL`, `XXL`) |
| `pizza_category` | String | Category of the pizza (`Classic`, `Chicken`, `Supreme`, `Veggie`) |
| `pizza_ingredients` | String | Comma-separated list of ingredients |
| `pizza_name` | String | Full display name of the pizza |

**Row count:** 48,620 line items
**Date range:** 01-01-2015 to 31-12-2015
