<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style/style.css">
    <!-- css/pages -->
    <link rel="stylesheet" href="style/pages/index.css">

    <title>inv</title>
</head>
<body>
    <div class="navigation">
        <div class="wrapper">
            <div class="menu">
                <a href="list.php">list invoices</a>
                <a href="#">list clients</a>
                <a href="#">statistics</a>
                <a href="index.php" class="active">new invoice</a>
            </div>
            <span>invoice app</span>
        </div>
    </div>

    <div class="content">
        <div style="text-align: center"><span>new invoice</span></div>

        <div class="wrapper">
          <div class="invoice-info">
            <span class="outline-text">BIZ</span>
            <span class="outline-text" id="last_invoice_number">-</span>
            <span class="outline-text"><script>document.write(new Date().getDate())</script>-<script>document.write(new Date().getMonth() + 1)</script>-<script>document.write(new Date().getFullYear())</script></span>
          </div>

        </div>

        <div class="wrapper">
            <div class="client-area form">
                <div class="entity">
                    <label for="entity">entity:</label>
                    <div class="entity-body">
                        <div class="btn color-grey">
                            <label for="natural_person">natural person</label>
                            <input type="checkbox" id="natural_person" name="natural_person">
                        </div>
                        <div class="btn color-grey">
                            <label for="juridical_person">juridical person</label>
                            <input type="checkbox" id="juridical_person" name="juridical_person">
                        </div>
                    </div>
                </div>
                <div class="input">
                    <label for="client_name">client name:</label>
                    <input type="text" id="client_name" name="client_name">
                </div>
                <div class="input">
                    <label for="client_address">client address:</label>
                    <input type="text" id="client_address" name="client_address">
                </div>
                <div class="input">
                    <label for="client_phone">client phone:</label>
                    <input type="text" id="client_phone" name="client_phone">
                </div>
            </div>
            <div class="details-area form">
                <div class="input">
                    <label for="shipping_price">shipping price:</label>
                    <input type="text" id="shipping_price" name="shipping_price">
                </div>
                <div class="input">
                    <label for="item_1">item <span class="item-count">1</span>:</label>
                    <div class="input-with-price">
                      <input type="text" id="item_1" name="item">
                      <input type="text" id="item_1_price" name="item_price">
                    </div>
                </div>
                <div class="input">
                    <label for="item_2">item <span class="item-count">2</span>:</label>
                    <div class="input-with-price">
                      <input type="text" id="item_2" name="item">
                      <input type="text" id="item_2_price" name="item_price">
                    </div>
                </div>
            </div>

            <div style="margin-top: 50px;">
                <span class="invoice-submit-btn btn color-green">submit</span>
            </div>
        </div>

    </div>


    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="js/notification.js"></script>

    <script src="js/new-invoice.js"></script>


</body>
</html>
