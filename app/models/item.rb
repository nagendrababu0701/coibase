class Item < ActiveRecord::Base
  belongs_to :user

	PAYMENT_METHOD = ["National bank transfer", "Transfers with specific bank", "International Wire (SWIFT)", "Other online payment", "Cash deposit", "Cash by mail", "IMPS Bank Transfer India", "OKPay", "Paypal", "WebMoney", "Moneybookers / Skrill", "Neteller", "Western Union", "Moneygram", "Perfect Money", "CashU", "Payza", "Gift Card Code", "Gift Card Code (Global)", "Other Online Wallet", "Other Online Wallet (Global)", "Other Remittance", "Other Pre-Paid Debit Card", "Transferwise", "Amazon Gift Card Code", "Starbucks Gift Card Code", "Apple Store Gift Card Code", "RIA Money Transfer", "SolidTrustPay", "Paxum", "Steam Gift Card Code", "Ebay Gift Card Code", "Payeer", "Credit card"]
	CURRENCY_TYPE = ["AED", "AFN", "ALL", "AMD", "ANG", "AOA", "ARS", "AUD", "AWG", "AZN", "BAM", "BBD", "BDT", "BGN", "BHD", "BIF", "BMD", "BND", "BOB", "BRL", "BSD", "BTN", "BWP", "BYR", "BZD", "CAD", "CDF", "CHF", "CLF", "CLP", "CNY", "COP", "CRC", "CUC", "CUP", "CVE", "CZK", "DJF", "DKK", "DOP", "DZD", "EEK", "EGP", "ERN", "ETB", "EUR", "FJD", "FKP", "GBP", "GEL", "GGP", "GHS", "GIP", "GMD", "GNF", "GTQ", "GYD", "HKD", "HNL", "HRK", "HTG", "HUF", "IDR", "ILS", "IMP", "INR", "IQD", "IRR", "ISK", "JEP", "JMD", "JOD", "JPY", "KES", "KGS", "KHR", "KMF", "KPW", "KRW", "KWD", "KYD", "KZT", "LAK", "LBP", "LKR", "LRD", "LSL", "LTL", "LVL", "LYD", "MAD", "MDL", "MGA", "MKD", "MMK", "MNT", "MOP", "MRO", "MTL", "MUR", "MVR", "MWK", "MXN", "MYR", "MZN", "NAD", "NGN", "NIO", "NOK", "NPR", "NZD", "OMR", "PAB", "PEN", "PGK", "PHP", "PKR", "PLN", "PYG", "QAR", "RON", "RSD", "RUB", "RWF", "SAR", "SBD", "SCR", "SDG", "SEK", "SGD", "SHP", "SLL", "SOS", "SRD", "STD", "SVC", "SYP", "SZL", "THB", "TJS", "TMT", "TND", "TOP", "TRY", "TTD", "TWD", "TZS", "UAH", "UG", "USD", "UYU", "UZS", "VEF", "VND", "VUV", "WST", "XAF", "XAG", "XAR", "XAU", "XCD", "XDR", "XOF", "XPD", "XPF", "XPT", "YER", "ZAR", "ZMK", "ZMW", "ZWL"]

	def payment_method
	end
	
end
