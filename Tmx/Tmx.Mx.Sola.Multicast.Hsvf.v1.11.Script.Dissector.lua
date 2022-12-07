-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Tmx Mx Sola Multicast Hsvf 1.11 Protocol
local tmx_mx_sola_multicast_hsvf_v1_11 = Proto("Tmx.Mx.Sola.Multicast.Hsvf.v1.11.Lua", "Tmx Mx Sola Multicast Hsvf 1.11")

-- Component Tables
local show = {}
local format = {}
local display = {}
local dissect = {}
local size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Tmx Mx Sola Multicast Hsvf 1.11 Fields
tmx_mx_sola_multicast_hsvf_v1_11.fields.ask_price_fraction_indicator = ProtoField.new("Ask Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.askpricefractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.ask_price_n_6 = ProtoField.new("Ask Price N 6", "tmx.mx.sola.multicast.hsvf.v1.11.askpricen6", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.ask_price_sign = ProtoField.new("Ask Price Sign", "tmx.mx.sola.multicast.hsvf.v1.11.askpricesign", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.ask_price_x_6 = ProtoField.new("Ask Price X 6", "tmx.mx.sola.multicast.hsvf.v1.11.askpricex6", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.ask_size = ProtoField.new("Ask Size", "tmx.mx.sola.multicast.hsvf.v1.11.asksize", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.beginning_of_future_options_summary_message = ProtoField.new("Beginning Of Future Options Summary Message", "tmx.mx.sola.multicast.hsvf.v1.11.beginningoffutureoptionssummarymessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.beginning_of_futures_summary_message = ProtoField.new("Beginning Of Futures Summary Message", "tmx.mx.sola.multicast.hsvf.v1.11.beginningoffuturessummarymessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.beginning_of_options_summary_message = ProtoField.new("Beginning Of Options Summary Message", "tmx.mx.sola.multicast.hsvf.v1.11.beginningofoptionssummarymessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.beginning_of_strategy_summary_message = ProtoField.new("Beginning Of Strategy Summary Message", "tmx.mx.sola.multicast.hsvf.v1.11.beginningofstrategysummarymessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.bid_price_fraction_indicator = ProtoField.new("Bid Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.bidpricefractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.bid_price_n_6 = ProtoField.new("Bid Price N 6", "tmx.mx.sola.multicast.hsvf.v1.11.bidpricen6", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.bid_price_sign = ProtoField.new("Bid Price Sign", "tmx.mx.sola.multicast.hsvf.v1.11.bidpricesign", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.bid_price_x_6 = ProtoField.new("Bid Price X 6", "tmx.mx.sola.multicast.hsvf.v1.11.bidpricex6", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.bid_size = ProtoField.new("Bid Size", "tmx.mx.sola.multicast.hsvf.v1.11.bidsize", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.bulletin = ProtoField.new("Bulletin", "tmx.mx.sola.multicast.hsvf.v1.11.bulletin", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.bulletin_contents_x_49 = ProtoField.new("Bulletin Contents X 49", "tmx.mx.sola.multicast.hsvf.v1.11.bulletincontentsx49", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.bulletin_type = ProtoField.new("Bulletin Type", "tmx.mx.sola.multicast.hsvf.v1.11.bulletintype", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.bulletins_message = ProtoField.new("Bulletins Message", "tmx.mx.sola.multicast.hsvf.v1.11.bulletinsmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.call_put_code = ProtoField.new("Call Put Code", "tmx.mx.sola.multicast.hsvf.v1.11.callputcode", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.cash_flow_alignment_date = ProtoField.new("Cash Flow Alignment Date", "tmx.mx.sola.multicast.hsvf.v1.11.cashflowalignmentdate", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.circuit_assurance_message = ProtoField.new("Circuit Assurance Message", "tmx.mx.sola.multicast.hsvf.v1.11.circuitassurancemessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.continue_marker = ProtoField.new("Continue Marker", "tmx.mx.sola.multicast.hsvf.v1.11.continuemarker", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.contract_month_code = ProtoField.new("Contract Month Code", "tmx.mx.sola.multicast.hsvf.v1.11.contractmonthcode", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.contract_size = ProtoField.new("Contract Size", "tmx.mx.sola.multicast.hsvf.v1.11.contractsize", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.currency = ProtoField.new("Currency", "tmx.mx.sola.multicast.hsvf.v1.11.currency", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.day_count_convention = ProtoField.new("Day Count Convention", "tmx.mx.sola.multicast.hsvf.v1.11.daycountconvention", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.delivery_day = ProtoField.new("Delivery Day", "tmx.mx.sola.multicast.hsvf.v1.11.deliveryday", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.delivery_month = ProtoField.new("Delivery Month", "tmx.mx.sola.multicast.hsvf.v1.11.deliverymonth", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.delivery_type = ProtoField.new("Delivery Type", "tmx.mx.sola.multicast.hsvf.v1.11.deliverytype", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.delivery_year_n_1 = ProtoField.new("Delivery Year N 1", "tmx.mx.sola.multicast.hsvf.v1.11.deliveryyearn1", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.delivery_year_n_2 = ProtoField.new("Delivery Year N 2", "tmx.mx.sola.multicast.hsvf.v1.11.deliveryyearn2", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.effective_date = ProtoField.new("Effective Date", "tmx.mx.sola.multicast.hsvf.v1.11.effectivedate", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.end_of_sales_message = ProtoField.new("End Of Sales Message", "tmx.mx.sola.multicast.hsvf.v1.11.endofsalesmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.end_of_transmission_message = ProtoField.new("End Of Transmission Message", "tmx.mx.sola.multicast.hsvf.v1.11.endoftransmissionmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.exchange_i_d = ProtoField.new("Exchange I D", "tmx.mx.sola.multicast.hsvf.v1.11.exchangeid", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.exchange_id_a_1 = ProtoField.new("Exchange Id A 1", "tmx.mx.sola.multicast.hsvf.v1.11.exchangeida1", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.exchange_id_x_1 = ProtoField.new("Exchange Id X 1", "tmx.mx.sola.multicast.hsvf.v1.11.exchangeidx1", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.expiry_day = ProtoField.new("Expiry Day", "tmx.mx.sola.multicast.hsvf.v1.11.expiryday", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.expiry_month = ProtoField.new("Expiry Month", "tmx.mx.sola.multicast.hsvf.v1.11.expirymonth", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.expiry_year = ProtoField.new("Expiry Year", "tmx.mx.sola.multicast.hsvf.v1.11.expiryyear", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.external_price_at_source = ProtoField.new("External Price At Source", "tmx.mx.sola.multicast.hsvf.v1.11.externalpriceatsource", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.external_price_fraction_indicator = ProtoField.new("External Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.externalpricefractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.external_symbol = ProtoField.new("External Symbol", "tmx.mx.sola.multicast.hsvf.v1.11.externalsymbol", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.filler_a_1 = ProtoField.new("Filler A 1", "tmx.mx.sola.multicast.hsvf.v1.11.fillera1", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.filler_n_6 = ProtoField.new("Filler N 6", "tmx.mx.sola.multicast.hsvf.v1.11.fillern6", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.filler_x_1 = ProtoField.new("Filler X 1", "tmx.mx.sola.multicast.hsvf.v1.11.fillerx1", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.filler_x_2 = ProtoField.new("Filler X 2", "tmx.mx.sola.multicast.hsvf.v1.11.fillerx2", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.filler_x_6 = ProtoField.new("Filler X 6", "tmx.mx.sola.multicast.hsvf.v1.11.fillerx6", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.first_payment_date = ProtoField.new("First Payment Date", "tmx.mx.sola.multicast.hsvf.v1.11.firstpaymentdate", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.first_reset_date = ProtoField.new("First Reset Date", "tmx.mx.sola.multicast.hsvf.v1.11.firstresetdate", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.fixed_rate = ProtoField.new("Fixed Rate", "tmx.mx.sola.multicast.hsvf.v1.11.fixedrate", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.fixed_rate_fraction_indicator = ProtoField.new("Fixed Rate Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.fixedratefractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.future_options_instrument_keys_message = ProtoField.new("Future Options Instrument Keys Message", "tmx.mx.sola.multicast.hsvf.v1.11.futureoptionsinstrumentkeysmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.future_options_market_depth_message = ProtoField.new("Future Options Market Depth Message", "tmx.mx.sola.multicast.hsvf.v1.11.futureoptionsmarketdepthmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.future_options_market_depth_trading_instrument = ProtoField.new("Future Options Market Depth Trading Instrument", "tmx.mx.sola.multicast.hsvf.v1.11.futureoptionsmarketdepthtradinginstrument", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.future_options_quote_message = ProtoField.new("Future Options Quote Message", "tmx.mx.sola.multicast.hsvf.v1.11.futureoptionsquotemessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.future_options_rfq_message = ProtoField.new("Future Options Rfq Message", "tmx.mx.sola.multicast.hsvf.v1.11.futureoptionsrfqmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.future_options_summary_message = ProtoField.new("Future Options Summary Message", "tmx.mx.sola.multicast.hsvf.v1.11.futureoptionssummarymessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.future_options_trade_cancellation_message = ProtoField.new("Future Options Trade Cancellation Message", "tmx.mx.sola.multicast.hsvf.v1.11.futureoptionstradecancellationmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.future_options_trade_correction_message = ProtoField.new("Future Options Trade Correction Message", "tmx.mx.sola.multicast.hsvf.v1.11.futureoptionstradecorrectionmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.future_options_trade_message = ProtoField.new("Future Options Trade Message", "tmx.mx.sola.multicast.hsvf.v1.11.futureoptionstrademessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.futures_instrument_keys_message = ProtoField.new("Futures Instrument Keys Message", "tmx.mx.sola.multicast.hsvf.v1.11.futuresinstrumentkeysmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.futures_market_depth_message = ProtoField.new("Futures Market Depth Message", "tmx.mx.sola.multicast.hsvf.v1.11.futuresmarketdepthmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.futures_market_depth_trading_instrument = ProtoField.new("Futures Market Depth Trading Instrument", "tmx.mx.sola.multicast.hsvf.v1.11.futuresmarketdepthtradinginstrument", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.futures_quote_message = ProtoField.new("Futures Quote Message", "tmx.mx.sola.multicast.hsvf.v1.11.futuresquotemessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.futures_rfq_message = ProtoField.new("Futures Rfq Message", "tmx.mx.sola.multicast.hsvf.v1.11.futuresrfqmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.futures_summary_message = ProtoField.new("Futures Summary Message", "tmx.mx.sola.multicast.hsvf.v1.11.futuressummarymessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.futures_trade_cancellation_message = ProtoField.new("Futures Trade Cancellation Message", "tmx.mx.sola.multicast.hsvf.v1.11.futurestradecancellationmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.futures_trade_correction_message = ProtoField.new("Futures Trade Correction Message", "tmx.mx.sola.multicast.hsvf.v1.11.futurestradecorrectionmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.futures_trade_message = ProtoField.new("Futures Trade Message", "tmx.mx.sola.multicast.hsvf.v1.11.futurestrademessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.group_instrument = ProtoField.new("Group Instrument", "tmx.mx.sola.multicast.hsvf.v1.11.groupinstrument", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.group_status = ProtoField.new("Group Status", "tmx.mx.sola.multicast.hsvf.v1.11.groupstatus", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.group_status_message = ProtoField.new("Group Status Message", "tmx.mx.sola.multicast.hsvf.v1.11.groupstatusmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.high_price = ProtoField.new("High Price", "tmx.mx.sola.multicast.hsvf.v1.11.highprice", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.high_price_fraction_indicator = ProtoField.new("High Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.highpricefractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.high_price_sign = ProtoField.new("High Price Sign", "tmx.mx.sola.multicast.hsvf.v1.11.highpricesign", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.historical_coupon_b = ProtoField.new("Historical Coupon B", "tmx.mx.sola.multicast.hsvf.v1.11.historicalcouponb", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.historical_coupon_fraction_indicator = ProtoField.new("Historical Coupon Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.historicalcouponfractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.hsvf_etx = ProtoField.new("Hsvf Etx", "tmx.mx.sola.multicast.hsvf.v1.11.hsvfetx", ftypes.INT8)
tmx_mx_sola_multicast_hsvf_v1_11.fields.hsvf_stx = ProtoField.new("Hsvf Stx", "tmx.mx.sola.multicast.hsvf.v1.11.hsvfstx", ftypes.INT8)
tmx_mx_sola_multicast_hsvf_v1_11.fields.initial_effective_date = ProtoField.new("Initial Effective Date", "tmx.mx.sola.multicast.hsvf.v1.11.initialeffectivedate", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.instrument = ProtoField.new("Instrument", "tmx.mx.sola.multicast.hsvf.v1.11.instrument", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.instrument_external_code = ProtoField.new("Instrument External Code", "tmx.mx.sola.multicast.hsvf.v1.11.instrumentexternalcode", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.instrument_id = ProtoField.new("Instrument Id", "tmx.mx.sola.multicast.hsvf.v1.11.instrumentid", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.instrument_schedule_notice_future_message = ProtoField.new("Instrument Schedule Notice Future Message", "tmx.mx.sola.multicast.hsvf.v1.11.instrumentschedulenoticefuturemessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.instrument_schedule_notice_futures_option_message = ProtoField.new("Instrument Schedule Notice Futures Option Message", "tmx.mx.sola.multicast.hsvf.v1.11.instrumentschedulenoticefuturesoptionmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.instrument_schedule_notice_option_message = ProtoField.new("Instrument Schedule Notice Option Message", "tmx.mx.sola.multicast.hsvf.v1.11.instrumentschedulenoticeoptionmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.instrument_schedule_notice_strategy_message = ProtoField.new("Instrument Schedule Notice Strategy Message", "tmx.mx.sola.multicast.hsvf.v1.11.instrumentschedulenoticestrategymessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.instrument_schedule_notice_swap_future_message = ProtoField.new("Instrument Schedule Notice Swap Future Message", "tmx.mx.sola.multicast.hsvf.v1.11.instrumentschedulenoticeswapfuturemessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.instrument_status_marker_a_1 = ProtoField.new("Instrument Status Marker A 1", "tmx.mx.sola.multicast.hsvf.v1.11.instrumentstatusmarkera1", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.instrument_status_marker_x_1 = ProtoField.new("Instrument Status Marker X 1", "tmx.mx.sola.multicast.hsvf.v1.11.instrumentstatusmarkerx1", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.last_price = ProtoField.new("Last Price", "tmx.mx.sola.multicast.hsvf.v1.11.lastprice", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.last_price_fraction_indicator = ProtoField.new("Last Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.lastpricefractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.last_price_sign = ProtoField.new("Last Price Sign", "tmx.mx.sola.multicast.hsvf.v1.11.lastpricesign", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.leg_ratio = ProtoField.new("Leg Ratio", "tmx.mx.sola.multicast.hsvf.v1.11.legratio", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.leg_ratio_sign = ProtoField.new("Leg Ratio Sign", "tmx.mx.sola.multicast.hsvf.v1.11.legratiosign", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.leg_symbol = ProtoField.new("Leg Symbol", "tmx.mx.sola.multicast.hsvf.v1.11.legsymbol", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.level = ProtoField.new("Level", "tmx.mx.sola.multicast.hsvf.v1.11.level", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.level_of_market_depth = ProtoField.new("Level Of Market Depth", "tmx.mx.sola.multicast.hsvf.v1.11.levelofmarketdepth", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.low_price = ProtoField.new("Low Price", "tmx.mx.sola.multicast.hsvf.v1.11.lowprice", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.low_price_fraction_indicator = ProtoField.new("Low Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.lowpricefractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.low_price_sign = ProtoField.new("Low Price Sign", "tmx.mx.sola.multicast.hsvf.v1.11.lowpricesign", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.market_flow = ProtoField.new("Market Flow", "tmx.mx.sola.multicast.hsvf.v1.11.marketflow", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.market_flow_indicator = ProtoField.new("Market Flow Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.marketflowindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.market_price_indicator = ProtoField.new("Market Price Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.marketpriceindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.maximum_number_of_contracts_per_order = ProtoField.new("Maximum Number Of Contracts Per Order", "tmx.mx.sola.multicast.hsvf.v1.11.maximumnumberofcontractsperorder", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.maximum_threshold_price_fraction_indicator = ProtoField.new("Maximum Threshold Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.maximumthresholdpricefractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.maximum_threshold_price_n_6 = ProtoField.new("Maximum Threshold Price N 6", "tmx.mx.sola.multicast.hsvf.v1.11.maximumthresholdpricen6", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.maximum_threshold_price_x_6 = ProtoField.new("Maximum Threshold Price X 6", "tmx.mx.sola.multicast.hsvf.v1.11.maximumthresholdpricex6", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.message_body = ProtoField.new("Message Body", "tmx.mx.sola.multicast.hsvf.v1.11.messagebody", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.message_header = ProtoField.new("Message Header", "tmx.mx.sola.multicast.hsvf.v1.11.messageheader", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.message_type = ProtoField.new("Message Type", "tmx.mx.sola.multicast.hsvf.v1.11.messagetype", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.min_price = ProtoField.new("Min Price", "tmx.mx.sola.multicast.hsvf.v1.11.minprice", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.min_price_fraction_indicator = ProtoField.new("Min Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.minpricefractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.minimum_number_of_contracts_per_order = ProtoField.new("Minimum Number Of Contracts Per Order", "tmx.mx.sola.multicast.hsvf.v1.11.minimumnumberofcontractsperorder", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.minimum_threshold_price_fraction_indicator = ProtoField.new("Minimum Threshold Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.minimumthresholdpricefractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.minimum_threshold_price_n_6 = ProtoField.new("Minimum Threshold Price N 6", "tmx.mx.sola.multicast.hsvf.v1.11.minimumthresholdpricen6", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.minimum_threshold_price_x_6 = ProtoField.new("Minimum Threshold Price X 6", "tmx.mx.sola.multicast.hsvf.v1.11.minimumthresholdpricex6", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.net_change = ProtoField.new("Net Change", "tmx.mx.sola.multicast.hsvf.v1.11.netchange", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.net_change_fraction_indicator_a_1 = ProtoField.new("Net Change Fraction Indicator A 1", "tmx.mx.sola.multicast.hsvf.v1.11.netchangefractionindicatora1", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.net_change_fraction_indicator_x_1 = ProtoField.new("Net Change Fraction Indicator X 1", "tmx.mx.sola.multicast.hsvf.v1.11.netchangefractionindicatorx1", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.net_change_sign_a_1 = ProtoField.new("Net Change Sign A 1", "tmx.mx.sola.multicast.hsvf.v1.11.netchangesigna1", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.net_change_sign_x_1 = ProtoField.new("Net Change Sign X 1", "tmx.mx.sola.multicast.hsvf.v1.11.netchangesignx1", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.net_present_value_a = ProtoField.new("Net Present Value A", "tmx.mx.sola.multicast.hsvf.v1.11.netpresentvaluea", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.net_present_value_fraction_indicator = ProtoField.new("Net Present Value Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.netpresentvaluefractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.next_payment_date = ProtoField.new("Next Payment Date", "tmx.mx.sola.multicast.hsvf.v1.11.nextpaymentdate", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.next_reset_date = ProtoField.new("Next Reset Date", "tmx.mx.sola.multicast.hsvf.v1.11.nextresetdate", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.notional_principal_amount = ProtoField.new("Notional Principal Amount", "tmx.mx.sola.multicast.hsvf.v1.11.notionalprincipalamount", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.notional_principal_amount_faction_indicator = ProtoField.new("Notional Principal Amount Faction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.notionalprincipalamountfactionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.number_of_ask_orders = ProtoField.new("Number Of Ask Orders", "tmx.mx.sola.multicast.hsvf.v1.11.numberofaskorders", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.number_of_bid_orders = ProtoField.new("Number Of Bid Orders", "tmx.mx.sola.multicast.hsvf.v1.11.numberofbidorders", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.number_of_entries = ProtoField.new("Number Of Entries", "tmx.mx.sola.multicast.hsvf.v1.11.numberofentries", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.number_of_legs = ProtoField.new("Number Of Legs", "tmx.mx.sola.multicast.hsvf.v1.11.numberoflegs", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.number_of_level = ProtoField.new("Number Of Level", "tmx.mx.sola.multicast.hsvf.v1.11.numberoflevel", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.open_interest = ProtoField.new("Open Interest", "tmx.mx.sola.multicast.hsvf.v1.11.openinterest", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.open_price = ProtoField.new("Open Price", "tmx.mx.sola.multicast.hsvf.v1.11.openprice", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.open_price_fraction_indicator = ProtoField.new("Open Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.openpricefractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.open_price_sign = ProtoField.new("Open Price Sign", "tmx.mx.sola.multicast.hsvf.v1.11.openpricesign", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.opening_price = ProtoField.new("Opening Price", "tmx.mx.sola.multicast.hsvf.v1.11.openingprice", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.opening_price_fraction_indicator = ProtoField.new("Opening Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.openingpricefractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.option_instrument_keys_message = ProtoField.new("Option Instrument Keys Message", "tmx.mx.sola.multicast.hsvf.v1.11.optioninstrumentkeysmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.option_marker = ProtoField.new("Option Marker", "tmx.mx.sola.multicast.hsvf.v1.11.optionmarker", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.option_market_depth_message = ProtoField.new("Option Market Depth Message", "tmx.mx.sola.multicast.hsvf.v1.11.optionmarketdepthmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.option_market_depth_trading_instrument = ProtoField.new("Option Market Depth Trading Instrument", "tmx.mx.sola.multicast.hsvf.v1.11.optionmarketdepthtradinginstrument", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.option_quote_message = ProtoField.new("Option Quote Message", "tmx.mx.sola.multicast.hsvf.v1.11.optionquotemessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.option_rfq_message = ProtoField.new("Option Rfq Message", "tmx.mx.sola.multicast.hsvf.v1.11.optionrfqmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.option_summary_message = ProtoField.new("Option Summary Message", "tmx.mx.sola.multicast.hsvf.v1.11.optionsummarymessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.option_trade_cancellation_message = ProtoField.new("Option Trade Cancellation Message", "tmx.mx.sola.multicast.hsvf.v1.11.optiontradecancellationmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.option_trade_correction_message = ProtoField.new("Option Trade Correction Message", "tmx.mx.sola.multicast.hsvf.v1.11.optiontradecorrectionmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.option_trade_message = ProtoField.new("Option Trade Message", "tmx.mx.sola.multicast.hsvf.v1.11.optiontrademessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.option_type = ProtoField.new("Option Type", "tmx.mx.sola.multicast.hsvf.v1.11.optiontype", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.packet = ProtoField.new("Packet", "tmx.mx.sola.multicast.hsvf.v1.11.packet", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.payment_frequency = ProtoField.new("Payment Frequency", "tmx.mx.sola.multicast.hsvf.v1.11.paymentfrequency", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.previous_reset_date = ProtoField.new("Previous Reset Date", "tmx.mx.sola.multicast.hsvf.v1.11.previousresetdate", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.previous_reset_rate = ProtoField.new("Previous Reset Rate", "tmx.mx.sola.multicast.hsvf.v1.11.previousresetrate", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.previous_reset_rate_fraction_indicator = ProtoField.new("Previous Reset Rate Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.previousresetratefractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.previous_settlement = ProtoField.new("Previous Settlement", "tmx.mx.sola.multicast.hsvf.v1.11.previoussettlement", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.previous_settlement_fraction_indicator = ProtoField.new("Previous Settlement Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.previoussettlementfractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.previous_settlement_price = ProtoField.new("Previous Settlement Price", "tmx.mx.sola.multicast.hsvf.v1.11.previoussettlementprice", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.previous_settlement_price_fraction_indicator = ProtoField.new("Previous Settlement Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.previoussettlementpricefractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.price = ProtoField.new("Price", "tmx.mx.sola.multicast.hsvf.v1.11.price", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.price_alignment_interest_c = ProtoField.new("Price Alignment Interest C", "tmx.mx.sola.multicast.hsvf.v1.11.pricealignmentinterestc", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.price_alignment_interest_fraction_indicator = ProtoField.new("Price Alignment Interest Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.pricealignmentinterestfractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.price_fraction_indicator = ProtoField.new("Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.pricefractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.price_indicator_marker_a_1 = ProtoField.new("Price Indicator Marker A 1", "tmx.mx.sola.multicast.hsvf.v1.11.priceindicatormarkera1", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.price_indicator_marker_x_1 = ProtoField.new("Price Indicator Marker X 1", "tmx.mx.sola.multicast.hsvf.v1.11.priceindicatormarkerx1", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.reason = ProtoField.new("Reason", "tmx.mx.sola.multicast.hsvf.v1.11.reason", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.regular_bulletin_contents = ProtoField.new("Regular Bulletin Contents", "tmx.mx.sola.multicast.hsvf.v1.11.regularbulletincontents", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.regular_text_bulletin = ProtoField.new("Regular Text Bulletin", "tmx.mx.sola.multicast.hsvf.v1.11.regulartextbulletin", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.requested_market_side = ProtoField.new("Requested Market Side", "tmx.mx.sola.multicast.hsvf.v1.11.requestedmarketside", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.requested_size = ProtoField.new("Requested Size", "tmx.mx.sola.multicast.hsvf.v1.11.requestedsize", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.reserved = ProtoField.new("Reserved", "tmx.mx.sola.multicast.hsvf.v1.11.reserved", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.reset_frequency = ProtoField.new("Reset Frequency", "tmx.mx.sola.multicast.hsvf.v1.11.resetfrequency", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.root_symbol_a_6 = ProtoField.new("Root Symbol A 6", "tmx.mx.sola.multicast.hsvf.v1.11.rootsymbola6", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.root_symbol_x_6 = ProtoField.new("Root Symbol X 6", "tmx.mx.sola.multicast.hsvf.v1.11.rootsymbolx6", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.scheduled_status_change_time = ProtoField.new("Scheduled Status Change Time", "tmx.mx.sola.multicast.hsvf.v1.11.scheduledstatuschangetime", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.sequence_number = ProtoField.new("Sequence Number", "tmx.mx.sola.multicast.hsvf.v1.11.sequencenumber", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.series_status = ProtoField.new("Series Status", "tmx.mx.sola.multicast.hsvf.v1.11.seriesstatus", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.settlement_price = ProtoField.new("Settlement Price", "tmx.mx.sola.multicast.hsvf.v1.11.settlementprice", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.settlement_price_fraction_indicator_n_1 = ProtoField.new("Settlement Price Fraction Indicator N 1", "tmx.mx.sola.multicast.hsvf.v1.11.settlementpricefractionindicatorn1", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.settlement_price_fraction_indicator_x_1 = ProtoField.new("Settlement Price Fraction Indicator X 1", "tmx.mx.sola.multicast.hsvf.v1.11.settlementpricefractionindicatorx1", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.special_text_bulletin = ProtoField.new("Special Text Bulletin", "tmx.mx.sola.multicast.hsvf.v1.11.specialtextbulletin", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.strategies_message = ProtoField.new("Strategies Message", "tmx.mx.sola.multicast.hsvf.v1.11.strategiesmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_allow_implied = ProtoField.new("Strategy Allow Implied", "tmx.mx.sola.multicast.hsvf.v1.11.strategyallowimplied", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_instrument_keys_message = ProtoField.new("Strategy Instrument Keys Message", "tmx.mx.sola.multicast.hsvf.v1.11.strategyinstrumentkeysmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_market_depth_message = ProtoField.new("Strategy Market Depth Message", "tmx.mx.sola.multicast.hsvf.v1.11.strategymarketdepthmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_market_depth_trading_instrument = ProtoField.new("Strategy Market Depth Trading Instrument", "tmx.mx.sola.multicast.hsvf.v1.11.strategymarketdepthtradinginstrument", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_quote_message = ProtoField.new("Strategy Quote Message", "tmx.mx.sola.multicast.hsvf.v1.11.strategyquotemessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_rfq_message = ProtoField.new("Strategy Rfq Message", "tmx.mx.sola.multicast.hsvf.v1.11.strategyrfqmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_summary_message = ProtoField.new("Strategy Summary Message", "tmx.mx.sola.multicast.hsvf.v1.11.strategysummarymessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_summary_strategy_leg = ProtoField.new("Strategy Summary Strategy Leg", "tmx.mx.sola.multicast.hsvf.v1.11.strategysummarystrategyleg", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_symbol = ProtoField.new("Strategy Symbol", "tmx.mx.sola.multicast.hsvf.v1.11.strategysymbol", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_trade_cancellation_message = ProtoField.new("Strategy Trade Cancellation Message", "tmx.mx.sola.multicast.hsvf.v1.11.strategytradecancellationmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_trade_correction_message = ProtoField.new("Strategy Trade Correction Message", "tmx.mx.sola.multicast.hsvf.v1.11.strategytradecorrectionmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_trade_message = ProtoField.new("Strategy Trade Message", "tmx.mx.sola.multicast.hsvf.v1.11.strategytrademessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.strike_price_currency = ProtoField.new("Strike Price Currency", "tmx.mx.sola.multicast.hsvf.v1.11.strikepricecurrency", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.strike_price_fraction_indicator = ProtoField.new("Strike Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.strikepricefractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.strike_price_n_7 = ProtoField.new("Strike Price N 7", "tmx.mx.sola.multicast.hsvf.v1.11.strikepricen7", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.strike_price_x_7 = ProtoField.new("Strike Price X 7", "tmx.mx.sola.multicast.hsvf.v1.11.strikepricex7", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.swap_future_beginning_of_summary_message = ProtoField.new("Swap Future Beginning Of Summary Message", "tmx.mx.sola.multicast.hsvf.v1.11.swapfuturebeginningofsummarymessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.swap_future_instrument_keys_message = ProtoField.new("Swap Future Instrument Keys Message", "tmx.mx.sola.multicast.hsvf.v1.11.swapfutureinstrumentkeysmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.swap_future_market_depth_message = ProtoField.new("Swap Future Market Depth Message", "tmx.mx.sola.multicast.hsvf.v1.11.swapfuturemarketdepthmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.swap_future_market_depth_trading_instrument = ProtoField.new("Swap Future Market Depth Trading Instrument", "tmx.mx.sola.multicast.hsvf.v1.11.swapfuturemarketdepthtradinginstrument", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.swap_future_quote_message = ProtoField.new("Swap Future Quote Message", "tmx.mx.sola.multicast.hsvf.v1.11.swapfuturequotemessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.swap_future_rfq_message = ProtoField.new("Swap Future Rfq Message", "tmx.mx.sola.multicast.hsvf.v1.11.swapfuturerfqmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.swap_future_summary_message = ProtoField.new("Swap Future Summary Message", "tmx.mx.sola.multicast.hsvf.v1.11.swapfuturesummarymessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.swap_future_trade_cancellation_message = ProtoField.new("Swap Future Trade Cancellation Message", "tmx.mx.sola.multicast.hsvf.v1.11.swapfuturetradecancellationmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.swap_future_trade_correction_message = ProtoField.new("Swap Future Trade Correction Message", "tmx.mx.sola.multicast.hsvf.v1.11.swapfuturetradecorrectionmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.swap_future_trade_message = ProtoField.new("Swap Future Trade Message", "tmx.mx.sola.multicast.hsvf.v1.11.swapfuturetrademessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.symbol = ProtoField.new("Symbol", "tmx.mx.sola.multicast.hsvf.v1.11.symbol", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.tenor = ProtoField.new("Tenor", "tmx.mx.sola.multicast.hsvf.v1.11.tenor", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.tick = ProtoField.new("Tick", "tmx.mx.sola.multicast.hsvf.v1.11.tick", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.tick_entry_group = ProtoField.new("Tick Entry Group", "tmx.mx.sola.multicast.hsvf.v1.11.tickentrygroup", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.tick_increment = ProtoField.new("Tick Increment", "tmx.mx.sola.multicast.hsvf.v1.11.tickincrement", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.tick_increment_fraction_indicator = ProtoField.new("Tick Increment Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.tickincrementfractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.tick_price = ProtoField.new("Tick Price", "tmx.mx.sola.multicast.hsvf.v1.11.tickprice", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.tick_price_fraction_indicator = ProtoField.new("Tick Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.tickpricefractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.tick_table_message = ProtoField.new("Tick Table Message", "tmx.mx.sola.multicast.hsvf.v1.11.ticktablemessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.tick_table_name = ProtoField.new("Tick Table Name", "tmx.mx.sola.multicast.hsvf.v1.11.ticktablename", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.tick_table_short_name = ProtoField.new("Tick Table Short Name", "tmx.mx.sola.multicast.hsvf.v1.11.ticktableshortname", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.tick_value = ProtoField.new("Tick Value", "tmx.mx.sola.multicast.hsvf.v1.11.tickvalue", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.tick_value_fraction_indicator = ProtoField.new("Tick Value Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.tickvaluefractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.time = ProtoField.new("Time", "tmx.mx.sola.multicast.hsvf.v1.11.time", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.timestamp = ProtoField.new("Timestamp", "tmx.mx.sola.multicast.hsvf.v1.11.timestamp", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.trade_number = ProtoField.new("Trade Number", "tmx.mx.sola.multicast.hsvf.v1.11.tradenumber", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.trade_price = ProtoField.new("Trade Price", "tmx.mx.sola.multicast.hsvf.v1.11.tradeprice", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.trade_price_fraction_indicator = ProtoField.new("Trade Price Fraction Indicator", "tmx.mx.sola.multicast.hsvf.v1.11.tradepricefractionindicator", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.trade_price_sign = ProtoField.new("Trade Price Sign", "tmx.mx.sola.multicast.hsvf.v1.11.tradepricesign", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.trade_volume = ProtoField.new("Trade Volume", "tmx.mx.sola.multicast.hsvf.v1.11.tradevolume", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.underlying_instrument_keys_message = ProtoField.new("Underlying Instrument Keys Message", "tmx.mx.sola.multicast.hsvf.v1.11.underlyinginstrumentkeysmessage", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.underlying_symbol = ProtoField.new("Underlying Symbol", "tmx.mx.sola.multicast.hsvf.v1.11.underlyingsymbol", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.underlying_symbol_root_a_3 = ProtoField.new("Underlying Symbol Root A 3", "tmx.mx.sola.multicast.hsvf.v1.11.underlyingsymbolroota3", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.underlying_symbol_root_x_10 = ProtoField.new("Underlying Symbol Root X 10", "tmx.mx.sola.multicast.hsvf.v1.11.underlyingsymbolrootx10", ftypes.STRING)
tmx_mx_sola_multicast_hsvf_v1_11.fields.volume = ProtoField.new("Volume", "tmx.mx.sola.multicast.hsvf.v1.11.volume", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Tmx Mx Sola Multicast Hsvf 1.11 Element Dissection Options
show.beginning_of_future_options_summary_message = true
show.beginning_of_futures_summary_message = true
show.beginning_of_options_summary_message = true
show.beginning_of_strategy_summary_message = true
show.bulletins_message = true
show.circuit_assurance_message = true
show.end_of_sales_message = true
show.end_of_transmission_message = true
show.future_options_instrument_keys_message = true
show.future_options_market_depth_message = true
show.future_options_market_depth_trading_instrument = true
show.future_options_quote_message = true
show.future_options_rfq_message = true
show.future_options_summary_message = true
show.future_options_trade_cancellation_message = true
show.future_options_trade_correction_message = true
show.future_options_trade_message = true
show.futures_instrument_keys_message = true
show.futures_market_depth_message = true
show.futures_market_depth_trading_instrument = true
show.futures_quote_message = true
show.futures_rfq_message = true
show.futures_summary_message = true
show.futures_trade_cancellation_message = true
show.futures_trade_correction_message = true
show.futures_trade_message = true
show.group_status_message = true
show.instrument_schedule_notice_future_message = true
show.instrument_schedule_notice_futures_option_message = true
show.instrument_schedule_notice_option_message = true
show.instrument_schedule_notice_strategy_message = true
show.instrument_schedule_notice_swap_future_message = true
show.message_header = true
show.option_instrument_keys_message = true
show.option_market_depth_message = true
show.option_market_depth_trading_instrument = true
show.option_quote_message = true
show.option_rfq_message = true
show.option_summary_message = true
show.option_trade_cancellation_message = true
show.option_trade_correction_message = true
show.option_trade_message = true
show.packet = true
show.regular_text_bulletin = true
show.special_text_bulletin = true
show.strategies_message = true
show.strategy_instrument_keys_message = true
show.strategy_market_depth_message = true
show.strategy_market_depth_trading_instrument = true
show.strategy_quote_message = true
show.strategy_rfq_message = true
show.strategy_summary_message = true
show.strategy_summary_strategy_leg = true
show.strategy_trade_cancellation_message = true
show.strategy_trade_correction_message = true
show.strategy_trade_message = true
show.swap_future_beginning_of_summary_message = true
show.swap_future_instrument_keys_message = true
show.swap_future_market_depth_message = true
show.swap_future_market_depth_trading_instrument = true
show.swap_future_quote_message = true
show.swap_future_rfq_message = true
show.swap_future_summary_message = true
show.swap_future_trade_cancellation_message = true
show.swap_future_trade_correction_message = true
show.swap_future_trade_message = true
show.tick_entry_group = true
show.tick_table_message = true
show.underlying_instrument_keys_message = true
show.bulletin = false
show.message_body = false

-- Register Tmx Mx Sola Multicast Hsvf 1.11 Show Options
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_beginning_of_future_options_summary_message = Pref.bool("Show Beginning Of Future Options Summary Message", show.beginning_of_future_options_summary_message, "Parse and add Beginning Of Future Options Summary Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_beginning_of_futures_summary_message = Pref.bool("Show Beginning Of Futures Summary Message", show.beginning_of_futures_summary_message, "Parse and add Beginning Of Futures Summary Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_beginning_of_options_summary_message = Pref.bool("Show Beginning Of Options Summary Message", show.beginning_of_options_summary_message, "Parse and add Beginning Of Options Summary Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_beginning_of_strategy_summary_message = Pref.bool("Show Beginning Of Strategy Summary Message", show.beginning_of_strategy_summary_message, "Parse and add Beginning Of Strategy Summary Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_bulletins_message = Pref.bool("Show Bulletins Message", show.bulletins_message, "Parse and add Bulletins Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_circuit_assurance_message = Pref.bool("Show Circuit Assurance Message", show.circuit_assurance_message, "Parse and add Circuit Assurance Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_end_of_sales_message = Pref.bool("Show End Of Sales Message", show.end_of_sales_message, "Parse and add End Of Sales Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_end_of_transmission_message = Pref.bool("Show End Of Transmission Message", show.end_of_transmission_message, "Parse and add End Of Transmission Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_instrument_keys_message = Pref.bool("Show Future Options Instrument Keys Message", show.future_options_instrument_keys_message, "Parse and add Future Options Instrument Keys Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_market_depth_message = Pref.bool("Show Future Options Market Depth Message", show.future_options_market_depth_message, "Parse and add Future Options Market Depth Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_market_depth_trading_instrument = Pref.bool("Show Future Options Market Depth Trading Instrument", show.future_options_market_depth_trading_instrument, "Parse and add Future Options Market Depth Trading Instrument to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_quote_message = Pref.bool("Show Future Options Quote Message", show.future_options_quote_message, "Parse and add Future Options Quote Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_rfq_message = Pref.bool("Show Future Options Rfq Message", show.future_options_rfq_message, "Parse and add Future Options Rfq Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_summary_message = Pref.bool("Show Future Options Summary Message", show.future_options_summary_message, "Parse and add Future Options Summary Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_trade_cancellation_message = Pref.bool("Show Future Options Trade Cancellation Message", show.future_options_trade_cancellation_message, "Parse and add Future Options Trade Cancellation Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_trade_correction_message = Pref.bool("Show Future Options Trade Correction Message", show.future_options_trade_correction_message, "Parse and add Future Options Trade Correction Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_trade_message = Pref.bool("Show Future Options Trade Message", show.future_options_trade_message, "Parse and add Future Options Trade Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_instrument_keys_message = Pref.bool("Show Futures Instrument Keys Message", show.futures_instrument_keys_message, "Parse and add Futures Instrument Keys Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_market_depth_message = Pref.bool("Show Futures Market Depth Message", show.futures_market_depth_message, "Parse and add Futures Market Depth Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_market_depth_trading_instrument = Pref.bool("Show Futures Market Depth Trading Instrument", show.futures_market_depth_trading_instrument, "Parse and add Futures Market Depth Trading Instrument to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_quote_message = Pref.bool("Show Futures Quote Message", show.futures_quote_message, "Parse and add Futures Quote Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_rfq_message = Pref.bool("Show Futures Rfq Message", show.futures_rfq_message, "Parse and add Futures Rfq Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_summary_message = Pref.bool("Show Futures Summary Message", show.futures_summary_message, "Parse and add Futures Summary Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_trade_cancellation_message = Pref.bool("Show Futures Trade Cancellation Message", show.futures_trade_cancellation_message, "Parse and add Futures Trade Cancellation Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_trade_correction_message = Pref.bool("Show Futures Trade Correction Message", show.futures_trade_correction_message, "Parse and add Futures Trade Correction Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_trade_message = Pref.bool("Show Futures Trade Message", show.futures_trade_message, "Parse and add Futures Trade Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_group_status_message = Pref.bool("Show Group Status Message", show.group_status_message, "Parse and add Group Status Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_instrument_schedule_notice_future_message = Pref.bool("Show Instrument Schedule Notice Future Message", show.instrument_schedule_notice_future_message, "Parse and add Instrument Schedule Notice Future Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_instrument_schedule_notice_futures_option_message = Pref.bool("Show Instrument Schedule Notice Futures Option Message", show.instrument_schedule_notice_futures_option_message, "Parse and add Instrument Schedule Notice Futures Option Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_instrument_schedule_notice_option_message = Pref.bool("Show Instrument Schedule Notice Option Message", show.instrument_schedule_notice_option_message, "Parse and add Instrument Schedule Notice Option Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_instrument_schedule_notice_strategy_message = Pref.bool("Show Instrument Schedule Notice Strategy Message", show.instrument_schedule_notice_strategy_message, "Parse and add Instrument Schedule Notice Strategy Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_instrument_schedule_notice_swap_future_message = Pref.bool("Show Instrument Schedule Notice Swap Future Message", show.instrument_schedule_notice_swap_future_message, "Parse and add Instrument Schedule Notice Swap Future Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_instrument_keys_message = Pref.bool("Show Option Instrument Keys Message", show.option_instrument_keys_message, "Parse and add Option Instrument Keys Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_market_depth_message = Pref.bool("Show Option Market Depth Message", show.option_market_depth_message, "Parse and add Option Market Depth Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_market_depth_trading_instrument = Pref.bool("Show Option Market Depth Trading Instrument", show.option_market_depth_trading_instrument, "Parse and add Option Market Depth Trading Instrument to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_quote_message = Pref.bool("Show Option Quote Message", show.option_quote_message, "Parse and add Option Quote Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_rfq_message = Pref.bool("Show Option Rfq Message", show.option_rfq_message, "Parse and add Option Rfq Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_summary_message = Pref.bool("Show Option Summary Message", show.option_summary_message, "Parse and add Option Summary Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_trade_cancellation_message = Pref.bool("Show Option Trade Cancellation Message", show.option_trade_cancellation_message, "Parse and add Option Trade Cancellation Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_trade_correction_message = Pref.bool("Show Option Trade Correction Message", show.option_trade_correction_message, "Parse and add Option Trade Correction Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_trade_message = Pref.bool("Show Option Trade Message", show.option_trade_message, "Parse and add Option Trade Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_regular_text_bulletin = Pref.bool("Show Regular Text Bulletin", show.regular_text_bulletin, "Parse and add Regular Text Bulletin to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_special_text_bulletin = Pref.bool("Show Special Text Bulletin", show.special_text_bulletin, "Parse and add Special Text Bulletin to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategies_message = Pref.bool("Show Strategies Message", show.strategies_message, "Parse and add Strategies Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_instrument_keys_message = Pref.bool("Show Strategy Instrument Keys Message", show.strategy_instrument_keys_message, "Parse and add Strategy Instrument Keys Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_market_depth_message = Pref.bool("Show Strategy Market Depth Message", show.strategy_market_depth_message, "Parse and add Strategy Market Depth Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_market_depth_trading_instrument = Pref.bool("Show Strategy Market Depth Trading Instrument", show.strategy_market_depth_trading_instrument, "Parse and add Strategy Market Depth Trading Instrument to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_quote_message = Pref.bool("Show Strategy Quote Message", show.strategy_quote_message, "Parse and add Strategy Quote Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_rfq_message = Pref.bool("Show Strategy Rfq Message", show.strategy_rfq_message, "Parse and add Strategy Rfq Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_summary_message = Pref.bool("Show Strategy Summary Message", show.strategy_summary_message, "Parse and add Strategy Summary Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_summary_strategy_leg = Pref.bool("Show Strategy Summary Strategy Leg", show.strategy_summary_strategy_leg, "Parse and add Strategy Summary Strategy Leg to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_trade_cancellation_message = Pref.bool("Show Strategy Trade Cancellation Message", show.strategy_trade_cancellation_message, "Parse and add Strategy Trade Cancellation Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_trade_correction_message = Pref.bool("Show Strategy Trade Correction Message", show.strategy_trade_correction_message, "Parse and add Strategy Trade Correction Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_trade_message = Pref.bool("Show Strategy Trade Message", show.strategy_trade_message, "Parse and add Strategy Trade Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_beginning_of_summary_message = Pref.bool("Show Swap Future Beginning Of Summary Message", show.swap_future_beginning_of_summary_message, "Parse and add Swap Future Beginning Of Summary Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_instrument_keys_message = Pref.bool("Show Swap Future Instrument Keys Message", show.swap_future_instrument_keys_message, "Parse and add Swap Future Instrument Keys Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_market_depth_message = Pref.bool("Show Swap Future Market Depth Message", show.swap_future_market_depth_message, "Parse and add Swap Future Market Depth Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_market_depth_trading_instrument = Pref.bool("Show Swap Future Market Depth Trading Instrument", show.swap_future_market_depth_trading_instrument, "Parse and add Swap Future Market Depth Trading Instrument to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_quote_message = Pref.bool("Show Swap Future Quote Message", show.swap_future_quote_message, "Parse and add Swap Future Quote Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_rfq_message = Pref.bool("Show Swap Future Rfq Message", show.swap_future_rfq_message, "Parse and add Swap Future Rfq Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_summary_message = Pref.bool("Show Swap Future Summary Message", show.swap_future_summary_message, "Parse and add Swap Future Summary Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_trade_cancellation_message = Pref.bool("Show Swap Future Trade Cancellation Message", show.swap_future_trade_cancellation_message, "Parse and add Swap Future Trade Cancellation Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_trade_correction_message = Pref.bool("Show Swap Future Trade Correction Message", show.swap_future_trade_correction_message, "Parse and add Swap Future Trade Correction Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_trade_message = Pref.bool("Show Swap Future Trade Message", show.swap_future_trade_message, "Parse and add Swap Future Trade Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_tick_entry_group = Pref.bool("Show Tick Entry Group", show.tick_entry_group, "Parse and add Tick Entry Group to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_tick_table_message = Pref.bool("Show Tick Table Message", show.tick_table_message, "Parse and add Tick Table Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_underlying_instrument_keys_message = Pref.bool("Show Underlying Instrument Keys Message", show.underlying_instrument_keys_message, "Parse and add Underlying Instrument Keys Message to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_bulletin = Pref.bool("Show Bulletin", show.bulletin, "Parse and add Bulletin to protocol tree")
tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_message_body = Pref.bool("Show Message Body", show.message_body, "Parse and add Message Body to protocol tree")

-- Handle changed preferences
function tmx_mx_sola_multicast_hsvf_v1_11.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.beginning_of_future_options_summary_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_beginning_of_future_options_summary_message then
    show.beginning_of_future_options_summary_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_beginning_of_future_options_summary_message
    changed = true
  end
  if show.beginning_of_futures_summary_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_beginning_of_futures_summary_message then
    show.beginning_of_futures_summary_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_beginning_of_futures_summary_message
    changed = true
  end
  if show.beginning_of_options_summary_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_beginning_of_options_summary_message then
    show.beginning_of_options_summary_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_beginning_of_options_summary_message
    changed = true
  end
  if show.beginning_of_strategy_summary_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_beginning_of_strategy_summary_message then
    show.beginning_of_strategy_summary_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_beginning_of_strategy_summary_message
    changed = true
  end
  if show.bulletins_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_bulletins_message then
    show.bulletins_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_bulletins_message
    changed = true
  end
  if show.circuit_assurance_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_circuit_assurance_message then
    show.circuit_assurance_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_circuit_assurance_message
    changed = true
  end
  if show.end_of_sales_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_end_of_sales_message then
    show.end_of_sales_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_end_of_sales_message
    changed = true
  end
  if show.end_of_transmission_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_end_of_transmission_message then
    show.end_of_transmission_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_end_of_transmission_message
    changed = true
  end
  if show.future_options_instrument_keys_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_instrument_keys_message then
    show.future_options_instrument_keys_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_instrument_keys_message
    changed = true
  end
  if show.future_options_market_depth_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_market_depth_message then
    show.future_options_market_depth_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_market_depth_message
    changed = true
  end
  if show.future_options_market_depth_trading_instrument ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_market_depth_trading_instrument then
    show.future_options_market_depth_trading_instrument = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_market_depth_trading_instrument
    changed = true
  end
  if show.future_options_quote_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_quote_message then
    show.future_options_quote_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_quote_message
    changed = true
  end
  if show.future_options_rfq_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_rfq_message then
    show.future_options_rfq_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_rfq_message
    changed = true
  end
  if show.future_options_summary_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_summary_message then
    show.future_options_summary_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_summary_message
    changed = true
  end
  if show.future_options_trade_cancellation_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_trade_cancellation_message then
    show.future_options_trade_cancellation_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_trade_cancellation_message
    changed = true
  end
  if show.future_options_trade_correction_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_trade_correction_message then
    show.future_options_trade_correction_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_trade_correction_message
    changed = true
  end
  if show.future_options_trade_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_trade_message then
    show.future_options_trade_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_future_options_trade_message
    changed = true
  end
  if show.futures_instrument_keys_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_instrument_keys_message then
    show.futures_instrument_keys_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_instrument_keys_message
    changed = true
  end
  if show.futures_market_depth_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_market_depth_message then
    show.futures_market_depth_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_market_depth_message
    changed = true
  end
  if show.futures_market_depth_trading_instrument ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_market_depth_trading_instrument then
    show.futures_market_depth_trading_instrument = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_market_depth_trading_instrument
    changed = true
  end
  if show.futures_quote_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_quote_message then
    show.futures_quote_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_quote_message
    changed = true
  end
  if show.futures_rfq_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_rfq_message then
    show.futures_rfq_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_rfq_message
    changed = true
  end
  if show.futures_summary_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_summary_message then
    show.futures_summary_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_summary_message
    changed = true
  end
  if show.futures_trade_cancellation_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_trade_cancellation_message then
    show.futures_trade_cancellation_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_trade_cancellation_message
    changed = true
  end
  if show.futures_trade_correction_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_trade_correction_message then
    show.futures_trade_correction_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_trade_correction_message
    changed = true
  end
  if show.futures_trade_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_trade_message then
    show.futures_trade_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_futures_trade_message
    changed = true
  end
  if show.group_status_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_group_status_message then
    show.group_status_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_group_status_message
    changed = true
  end
  if show.instrument_schedule_notice_future_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_instrument_schedule_notice_future_message then
    show.instrument_schedule_notice_future_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_instrument_schedule_notice_future_message
    changed = true
  end
  if show.instrument_schedule_notice_futures_option_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_instrument_schedule_notice_futures_option_message then
    show.instrument_schedule_notice_futures_option_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_instrument_schedule_notice_futures_option_message
    changed = true
  end
  if show.instrument_schedule_notice_option_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_instrument_schedule_notice_option_message then
    show.instrument_schedule_notice_option_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_instrument_schedule_notice_option_message
    changed = true
  end
  if show.instrument_schedule_notice_strategy_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_instrument_schedule_notice_strategy_message then
    show.instrument_schedule_notice_strategy_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_instrument_schedule_notice_strategy_message
    changed = true
  end
  if show.instrument_schedule_notice_swap_future_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_instrument_schedule_notice_swap_future_message then
    show.instrument_schedule_notice_swap_future_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_instrument_schedule_notice_swap_future_message
    changed = true
  end
  if show.message_header ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_message_header then
    show.message_header = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_message_header
    changed = true
  end
  if show.option_instrument_keys_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_instrument_keys_message then
    show.option_instrument_keys_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_instrument_keys_message
    changed = true
  end
  if show.option_market_depth_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_market_depth_message then
    show.option_market_depth_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_market_depth_message
    changed = true
  end
  if show.option_market_depth_trading_instrument ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_market_depth_trading_instrument then
    show.option_market_depth_trading_instrument = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_market_depth_trading_instrument
    changed = true
  end
  if show.option_quote_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_quote_message then
    show.option_quote_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_quote_message
    changed = true
  end
  if show.option_rfq_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_rfq_message then
    show.option_rfq_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_rfq_message
    changed = true
  end
  if show.option_summary_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_summary_message then
    show.option_summary_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_summary_message
    changed = true
  end
  if show.option_trade_cancellation_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_trade_cancellation_message then
    show.option_trade_cancellation_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_trade_cancellation_message
    changed = true
  end
  if show.option_trade_correction_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_trade_correction_message then
    show.option_trade_correction_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_trade_correction_message
    changed = true
  end
  if show.option_trade_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_trade_message then
    show.option_trade_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_option_trade_message
    changed = true
  end
  if show.packet ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_packet then
    show.packet = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_packet
    changed = true
  end
  if show.regular_text_bulletin ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_regular_text_bulletin then
    show.regular_text_bulletin = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_regular_text_bulletin
    changed = true
  end
  if show.special_text_bulletin ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_special_text_bulletin then
    show.special_text_bulletin = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_special_text_bulletin
    changed = true
  end
  if show.strategies_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategies_message then
    show.strategies_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategies_message
    changed = true
  end
  if show.strategy_instrument_keys_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_instrument_keys_message then
    show.strategy_instrument_keys_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_instrument_keys_message
    changed = true
  end
  if show.strategy_market_depth_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_market_depth_message then
    show.strategy_market_depth_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_market_depth_message
    changed = true
  end
  if show.strategy_market_depth_trading_instrument ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_market_depth_trading_instrument then
    show.strategy_market_depth_trading_instrument = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_market_depth_trading_instrument
    changed = true
  end
  if show.strategy_quote_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_quote_message then
    show.strategy_quote_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_quote_message
    changed = true
  end
  if show.strategy_rfq_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_rfq_message then
    show.strategy_rfq_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_rfq_message
    changed = true
  end
  if show.strategy_summary_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_summary_message then
    show.strategy_summary_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_summary_message
    changed = true
  end
  if show.strategy_summary_strategy_leg ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_summary_strategy_leg then
    show.strategy_summary_strategy_leg = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_summary_strategy_leg
    changed = true
  end
  if show.strategy_trade_cancellation_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_trade_cancellation_message then
    show.strategy_trade_cancellation_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_trade_cancellation_message
    changed = true
  end
  if show.strategy_trade_correction_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_trade_correction_message then
    show.strategy_trade_correction_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_trade_correction_message
    changed = true
  end
  if show.strategy_trade_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_trade_message then
    show.strategy_trade_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_strategy_trade_message
    changed = true
  end
  if show.swap_future_beginning_of_summary_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_beginning_of_summary_message then
    show.swap_future_beginning_of_summary_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_beginning_of_summary_message
    changed = true
  end
  if show.swap_future_instrument_keys_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_instrument_keys_message then
    show.swap_future_instrument_keys_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_instrument_keys_message
    changed = true
  end
  if show.swap_future_market_depth_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_market_depth_message then
    show.swap_future_market_depth_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_market_depth_message
    changed = true
  end
  if show.swap_future_market_depth_trading_instrument ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_market_depth_trading_instrument then
    show.swap_future_market_depth_trading_instrument = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_market_depth_trading_instrument
    changed = true
  end
  if show.swap_future_quote_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_quote_message then
    show.swap_future_quote_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_quote_message
    changed = true
  end
  if show.swap_future_rfq_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_rfq_message then
    show.swap_future_rfq_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_rfq_message
    changed = true
  end
  if show.swap_future_summary_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_summary_message then
    show.swap_future_summary_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_summary_message
    changed = true
  end
  if show.swap_future_trade_cancellation_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_trade_cancellation_message then
    show.swap_future_trade_cancellation_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_trade_cancellation_message
    changed = true
  end
  if show.swap_future_trade_correction_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_trade_correction_message then
    show.swap_future_trade_correction_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_trade_correction_message
    changed = true
  end
  if show.swap_future_trade_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_trade_message then
    show.swap_future_trade_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_swap_future_trade_message
    changed = true
  end
  if show.tick_entry_group ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_tick_entry_group then
    show.tick_entry_group = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_tick_entry_group
    changed = true
  end
  if show.tick_table_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_tick_table_message then
    show.tick_table_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_tick_table_message
    changed = true
  end
  if show.underlying_instrument_keys_message ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_underlying_instrument_keys_message then
    show.underlying_instrument_keys_message = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_underlying_instrument_keys_message
    changed = true
  end
  if show.bulletin ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_bulletin then
    show.bulletin = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_bulletin
    changed = true
  end
  if show.message_body ~= tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_message_body then
    show.message_body = tmx_mx_sola_multicast_hsvf_v1_11.prefs.show_message_body
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Protocol Functions
-----------------------------------------------------------------------

-- trim trailing spaces
trim_right_spaces = function(str)
  local finish = str:len()

  for i = 1, finish do
    if str:byte(i) == 0x20 then
      return str:sub(1, i - 1)
    end
  end

  return str
end


-----------------------------------------------------------------------
-- Dissect Tmx Mx Sola Multicast Hsvf 1.11
-----------------------------------------------------------------------

-- Size: Hsvf Etx
size_of.hsvf_etx = 1

-- Display: Hsvf Etx
display.hsvf_etx = function(value)
  return "Hsvf Etx: "..value
end

-- Dissect: Hsvf Etx
dissect.hsvf_etx = function(buffer, offset, packet, parent)
  local length = size_of.hsvf_etx
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.hsvf_etx(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.hsvf_etx, range, value, display)

  return offset + length, value
end

-- Size: Time
size_of.time = 6

-- Display: Time
display.time = function(value)
  return "Time: "..value
end

-- Dissect: Time
dissect.time = function(buffer, offset, packet, parent)
  local length = size_of.time
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = display.time(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.time, range, value, display)

  return offset + length, value
end

-- Calculate size of: Circuit Assurance Message
size_of.circuit_assurance_message = function(buffer, offset)
  local index = 0

  index = index + size_of.time

  return index
end

-- Display: Circuit Assurance Message
display.circuit_assurance_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Circuit Assurance Message
dissect.circuit_assurance_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Time: 6 Byte Ascii String
  index, time = dissect.time(buffer, index, packet, parent)

  return index
end

-- Dissect: Circuit Assurance Message
dissect.circuit_assurance_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.circuit_assurance_message then
    local length = size_of.circuit_assurance_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.circuit_assurance_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.circuit_assurance_message, range, display)
  end

  return dissect.circuit_assurance_message_fields(buffer, offset, packet, parent)
end

-- Size: Exchange Id A 1
size_of.exchange_id_a_1 = 1

-- Display: Exchange Id A 1
display.exchange_id_a_1 = function(value)
  return "Exchange Id A 1: "..value
end

-- Dissect: Exchange Id A 1
dissect.exchange_id_a_1 = function(buffer, offset, packet, parent)
  local length = size_of.exchange_id_a_1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.exchange_id_a_1(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.exchange_id_a_1, range, value, display)

  return offset + length, value
end

-- Calculate size of: End Of Transmission Message
size_of.end_of_transmission_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id_a_1

  index = index + size_of.time

  return index
end

-- Display: End Of Transmission Message
display.end_of_transmission_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: End Of Transmission Message
dissect.end_of_transmission_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: 1 Byte Ascii String
  index, exchange_id_a_1 = dissect.exchange_id_a_1(buffer, index, packet, parent)

  -- Time: 6 Byte Ascii String
  index, time = dissect.time(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Transmission Message
dissect.end_of_transmission_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.end_of_transmission_message then
    local length = size_of.end_of_transmission_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.end_of_transmission_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.end_of_transmission_message, range, display)
  end

  return dissect.end_of_transmission_message_fields(buffer, offset, packet, parent)
end

-- Size: Tick Price Fraction Indicator
size_of.tick_price_fraction_indicator = 1

-- Display: Tick Price Fraction Indicator
display.tick_price_fraction_indicator = function(value)
  return "Tick Price Fraction Indicator: "..value
end

-- Dissect: Tick Price Fraction Indicator
dissect.tick_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = size_of.tick_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.tick_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.tick_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Tick Price
size_of.tick_price = 6

-- Display: Tick Price
display.tick_price = function(value)
  return "Tick Price: "..value
end

-- Dissect: Tick Price
dissect.tick_price = function(buffer, offset, packet, parent)
  local length = size_of.tick_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = display.tick_price(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.tick_price, range, value, display)

  return offset + length, value
end

-- Size: Min Price Fraction Indicator
size_of.min_price_fraction_indicator = 1

-- Display: Min Price Fraction Indicator
display.min_price_fraction_indicator = function(value)
  return "Min Price Fraction Indicator: "..value
end

-- Dissect: Min Price Fraction Indicator
dissect.min_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = size_of.min_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.min_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.min_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Min Price
size_of.min_price = 6

-- Display: Min Price
display.min_price = function(value)
  return "Min Price: "..value
end

-- Dissect: Min Price
dissect.min_price = function(buffer, offset, packet, parent)
  local length = size_of.min_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = display.min_price(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.min_price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Tick Entry Group
size_of.tick_entry_group = function(buffer, offset)
  local index = 0

  index = index + size_of.min_price

  index = index + size_of.min_price_fraction_indicator

  index = index + size_of.tick_price

  index = index + size_of.tick_price_fraction_indicator

  return index
end

-- Display: Tick Entry Group
display.tick_entry_group = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Tick Entry Group
dissect.tick_entry_group_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Min Price: 6 Byte Ascii String
  index, min_price = dissect.min_price(buffer, index, packet, parent)

  -- Min Price Fraction Indicator: 1 Byte Ascii String
  index, min_price_fraction_indicator = dissect.min_price_fraction_indicator(buffer, index, packet, parent)

  -- Tick Price: 6 Byte Ascii String
  index, tick_price = dissect.tick_price(buffer, index, packet, parent)

  -- Tick Price Fraction Indicator: 1 Byte Ascii String
  index, tick_price_fraction_indicator = dissect.tick_price_fraction_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Tick Entry Group
dissect.tick_entry_group = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.tick_entry_group then
    local length = size_of.tick_entry_group(buffer, offset)
    local range = buffer(offset, length)
    local display = display.tick_entry_group(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.tick_entry_group, range, display)
  end

  return dissect.tick_entry_group_fields(buffer, offset, packet, parent)
end

-- Size: Number Of Entries
size_of.number_of_entries = 2

-- Display: Number Of Entries
display.number_of_entries = function(value)
  return "Number Of Entries: "..value
end

-- Dissect: Number Of Entries
dissect.number_of_entries = function(buffer, offset, packet, parent)
  local length = size_of.number_of_entries
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = display.number_of_entries(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.number_of_entries, range, value, display)

  return offset + length, value
end

-- Size: Tick Table Short Name
size_of.tick_table_short_name = 2

-- Display: Tick Table Short Name
display.tick_table_short_name = function(value)
  return "Tick Table Short Name: "..value
end

-- Dissect: Tick Table Short Name
dissect.tick_table_short_name = function(buffer, offset, packet, parent)
  local length = size_of.tick_table_short_name
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.tick_table_short_name(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.tick_table_short_name, range, value, display)

  return offset + length, value
end

-- Size: Tick Table Name
size_of.tick_table_name = 50

-- Display: Tick Table Name
display.tick_table_name = function(value)
  return "Tick Table Name: "..value
end

-- Dissect: Tick Table Name
dissect.tick_table_name = function(buffer, offset, packet, parent)
  local length = size_of.tick_table_name
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.tick_table_name(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.tick_table_name, range, value, display)

  return offset + length, value
end

-- Calculate size of: Tick Table Message
size_of.tick_table_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id_a_1

  index = index + size_of.tick_table_name

  index = index + size_of.tick_table_short_name

  index = index + size_of.number_of_entries

  -- Calculate field size from count
  local tick_entry_group_count = buffer(offset + index - 2, 2):string()
  index = index + tick_entry_group_count * 14

  return index
end

-- Display: Tick Table Message
display.tick_table_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Tick Table Message
dissect.tick_table_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: 1 Byte Ascii String
  index, exchange_id_a_1 = dissect.exchange_id_a_1(buffer, index, packet, parent)

  -- Tick Table Name: 50 Byte Ascii String
  index, tick_table_name = dissect.tick_table_name(buffer, index, packet, parent)

  -- Tick Table Short Name: 2 Byte Ascii String
  index, tick_table_short_name = dissect.tick_table_short_name(buffer, index, packet, parent)

  -- Number Of Entries: 2 Byte Ascii String
  index, number_of_entries = dissect.number_of_entries(buffer, index, packet, parent)

  -- Tick Entry Group: Struct of 4 fields
  for i = 1, number_of_entries do
    index = dissect.tick_entry_group(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Tick Table Message
dissect.tick_table_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.tick_table_message then
    local length = size_of.tick_table_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.tick_table_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.tick_table_message, range, display)
  end

  return dissect.tick_table_message_fields(buffer, offset, packet, parent)
end

-- Size: Reserved
size_of.reserved = 1

-- Display: Reserved
display.reserved = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
dissect.reserved = function(buffer, offset, packet, parent)
  local length = size_of.reserved
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.reserved(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.reserved, range, value, display)

  return offset + length, value
end

-- Calculate size of: End Of Sales Message
size_of.end_of_sales_message = function(buffer, offset)
  local index = 0

  index = index + size_of.reserved

  index = index + size_of.time

  return index
end

-- Display: End Of Sales Message
display.end_of_sales_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: End Of Sales Message
dissect.end_of_sales_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved: 1 Byte Ascii String
  index, reserved = dissect.reserved(buffer, index, packet, parent)

  -- Time: 6 Byte Ascii String
  index, time = dissect.time(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Sales Message
dissect.end_of_sales_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.end_of_sales_message then
    local length = size_of.end_of_sales_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.end_of_sales_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.end_of_sales_message, range, display)
  end

  return dissect.end_of_sales_message_fields(buffer, offset, packet, parent)
end

-- Size: Continue Marker
size_of.continue_marker = 1

-- Display: Continue Marker
display.continue_marker = function(value)
  return "Continue Marker: "..value
end

-- Dissect: Continue Marker
dissect.continue_marker = function(buffer, offset, packet, parent)
  local length = size_of.continue_marker
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = display.continue_marker(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.continue_marker, range, value, display)

  return offset + length, value
end

-- Size: Bulletin Contents X 49
size_of.bulletin_contents_x_49 = 49

-- Display: Bulletin Contents X 49
display.bulletin_contents_x_49 = function(value)
  return "Bulletin Contents X 49: "..value
end

-- Dissect: Bulletin Contents X 49
dissect.bulletin_contents_x_49 = function(buffer, offset, packet, parent)
  local length = size_of.bulletin_contents_x_49
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.bulletin_contents_x_49(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.bulletin_contents_x_49, range, value, display)

  return offset + length, value
end

-- Size: Symbol
size_of.symbol = 30

-- Display: Symbol
display.symbol = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
dissect.symbol = function(buffer, offset, packet, parent)
  local length = size_of.symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.symbol(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Special Text Bulletin
size_of.special_text_bulletin = function(buffer, offset)
  local index = 0

  index = index + size_of.symbol

  index = index + size_of.bulletin_contents_x_49

  index = index + size_of.continue_marker

  return index
end

-- Display: Special Text Bulletin
display.special_text_bulletin = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Special Text Bulletin
dissect.special_text_bulletin_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol: 30 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Bulletin Contents X 49: 49 Byte Ascii String
  index, bulletin_contents_x_49 = dissect.bulletin_contents_x_49(buffer, index, packet, parent)

  -- Continue Marker: 1 Byte Ascii String
  index, continue_marker = dissect.continue_marker(buffer, index, packet, parent)

  return index
end

-- Dissect: Special Text Bulletin
dissect.special_text_bulletin = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.special_text_bulletin then
    local length = size_of.special_text_bulletin(buffer, offset)
    local range = buffer(offset, length)
    local display = display.special_text_bulletin(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.special_text_bulletin, range, display)
  end

  return dissect.special_text_bulletin_fields(buffer, offset, packet, parent)
end

-- Size: Regular Bulletin Contents
size_of.regular_bulletin_contents = 79

-- Display: Regular Bulletin Contents
display.regular_bulletin_contents = function(value)
  return "Regular Bulletin Contents: "..value
end

-- Dissect: Regular Bulletin Contents
dissect.regular_bulletin_contents = function(buffer, offset, packet, parent)
  local length = size_of.regular_bulletin_contents
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.regular_bulletin_contents(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.regular_bulletin_contents, range, value, display)

  return offset + length, value
end

-- Calculate size of: Regular Text Bulletin
size_of.regular_text_bulletin = function(buffer, offset)
  local index = 0

  index = index + size_of.regular_bulletin_contents

  index = index + size_of.continue_marker

  return index
end

-- Display: Regular Text Bulletin
display.regular_text_bulletin = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Regular Text Bulletin
dissect.regular_text_bulletin_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Regular Bulletin Contents: 79 Byte Ascii String
  index, regular_bulletin_contents = dissect.regular_bulletin_contents(buffer, index, packet, parent)

  -- Continue Marker: 1 Byte Ascii String
  index, continue_marker = dissect.continue_marker(buffer, index, packet, parent)

  return index
end

-- Dissect: Regular Text Bulletin
dissect.regular_text_bulletin = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.regular_text_bulletin then
    local length = size_of.regular_text_bulletin(buffer, offset)
    local range = buffer(offset, length)
    local display = display.regular_text_bulletin(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.regular_text_bulletin, range, display)
  end

  return dissect.regular_text_bulletin_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Bulletin
size_of.bulletin = function(buffer, offset, bulletin_type)
  -- Size of Regular Text Bulletin
  if bulletin_type == "1" then
    return size_of.regular_text_bulletin(buffer, offset)
  end
  -- Size of Special Text Bulletin
  if bulletin_type == "2" then
    return size_of.special_text_bulletin(buffer, offset)
  end

  return 0
end

-- Display: Bulletin
display.bulletin = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Bulletin
dissect.bulletin_branches = function(buffer, offset, packet, parent, bulletin_type)
  -- Dissect Regular Text Bulletin
  if bulletin_type == "1" then
    return dissect.regular_text_bulletin(buffer, offset, packet, parent)
  end
  -- Dissect Special Text Bulletin
  if bulletin_type == "2" then
    return dissect.special_text_bulletin(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Bulletin
dissect.bulletin = function(buffer, offset, packet, parent, bulletin_type)
  if not show.bulletin then
    return dissect.bulletin_branches(buffer, offset, packet, parent, bulletin_type)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.bulletin(buffer, offset, bulletin_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.bulletin(buffer, packet, parent)
  local element = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.bulletin, range, display)

  return dissect.bulletin_branches(buffer, offset, packet, parent, bulletin_type)
end

-- Size: Bulletin Type
size_of.bulletin_type = 1

-- Display: Bulletin Type
display.bulletin_type = function(value)
  if value == "1" then
    return "Bulletin Type: Regular Text Bulletin (1)"
  end
  if value == "2" then
    return "Bulletin Type: Special Text Bulletin (2)"
  end

  return "Bulletin Type: Unknown("..value..")"
end

-- Dissect: Bulletin Type
dissect.bulletin_type = function(buffer, offset, packet, parent)
  local length = size_of.bulletin_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.bulletin_type(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.bulletin_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Bulletins Message
size_of.bulletins_message = function(buffer, offset)
  local index = 0

  index = index + size_of.reserved

  index = index + size_of.bulletin_type

  -- Calculate runtime size of Bulletin field
  local bulletin_offset = offset + index
  local bulletin_type = buffer(bulletin_offset - 1, 1):string()
  index = index + size_of.bulletin(buffer, bulletin_offset, bulletin_type)

  return index
end

-- Display: Bulletins Message
display.bulletins_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Bulletins Message
dissect.bulletins_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved: 1 Byte Ascii String
  index, reserved = dissect.reserved(buffer, index, packet, parent)

  -- Bulletin Type: 1 Byte Ascii String Enum with 2 values
  index, bulletin_type = dissect.bulletin_type(buffer, index, packet, parent)

  -- Bulletin: Runtime Type with 2 branches
  index = dissect.bulletin(buffer, index, packet, parent, bulletin_type)

  return index
end

-- Dissect: Bulletins Message
dissect.bulletins_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.bulletins_message then
    local length = size_of.bulletins_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.bulletins_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.bulletins_message, range, display)
  end

  return dissect.bulletins_message_fields(buffer, offset, packet, parent)
end

-- Size: Group Status
size_of.group_status = 1

-- Display: Group Status
display.group_status = function(value)
  return "Group Status: "..value
end

-- Dissect: Group Status
dissect.group_status = function(buffer, offset, packet, parent)
  local length = size_of.group_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.group_status(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.group_status, range, value, display)

  return offset + length, value
end

-- Size: Group Instrument
size_of.group_instrument = 2

-- Display: Group Instrument
display.group_instrument = function(value)
  return "Group Instrument: "..value
end

-- Dissect: Group Instrument
dissect.group_instrument = function(buffer, offset, packet, parent)
  local length = size_of.group_instrument
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.group_instrument(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.group_instrument, range, value, display)

  return offset + length, value
end

-- Calculate size of: Strategies Message
size_of.strategies_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id_a_1

  index = index + size_of.group_instrument

  index = index + size_of.group_status

  return index
end

-- Display: Strategies Message
display.strategies_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Strategies Message
dissect.strategies_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: 1 Byte Ascii String
  index, exchange_id_a_1 = dissect.exchange_id_a_1(buffer, index, packet, parent)

  -- Group Instrument: 2 Byte Ascii String
  index, group_instrument = dissect.group_instrument(buffer, index, packet, parent)

  -- Group Status: 1 Byte Ascii String
  index, group_status = dissect.group_status(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategies Message
dissect.strategies_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.strategies_message then
    local length = size_of.strategies_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.strategies_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.strategies_message, range, display)
  end

  return dissect.strategies_message_fields(buffer, offset, packet, parent)
end

-- Size: Root Symbol X 6
size_of.root_symbol_x_6 = 6

-- Display: Root Symbol X 6
display.root_symbol_x_6 = function(value)
  return "Root Symbol X 6: "..value
end

-- Dissect: Root Symbol X 6
dissect.root_symbol_x_6 = function(buffer, offset, packet, parent)
  local length = size_of.root_symbol_x_6
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.root_symbol_x_6(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.root_symbol_x_6, range, value, display)

  return offset + length, value
end

-- Calculate size of: Group Status Message
size_of.group_status_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id_a_1

  index = index + size_of.root_symbol_x_6

  index = index + size_of.group_status

  return index
end

-- Display: Group Status Message
display.group_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Group Status Message
dissect.group_status_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: 1 Byte Ascii String
  index, exchange_id_a_1 = dissect.exchange_id_a_1(buffer, index, packet, parent)

  -- Root Symbol X 6: 6 Byte Ascii String
  index, root_symbol_x_6 = dissect.root_symbol_x_6(buffer, index, packet, parent)

  -- Group Status: 1 Byte Ascii String
  index, group_status = dissect.group_status(buffer, index, packet, parent)

  return index
end

-- Dissect: Group Status Message
dissect.group_status_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.group_status_message then
    local length = size_of.group_status_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.group_status_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.group_status_message, range, display)
  end

  return dissect.group_status_message_fields(buffer, offset, packet, parent)
end

-- Size: Trade Number
size_of.trade_number = 8

-- Display: Trade Number
display.trade_number = function(value)
  return "Trade Number: "..value
end

-- Dissect: Trade Number
dissect.trade_number = function(buffer, offset, packet, parent)
  local length = size_of.trade_number
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.trade_number(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.trade_number, range, value, display)

  return offset + length, value
end

-- Size: Price Indicator Marker X 1
size_of.price_indicator_marker_x_1 = 1

-- Display: Price Indicator Marker X 1
display.price_indicator_marker_x_1 = function(value)
  return "Price Indicator Marker X 1: "..value
end

-- Dissect: Price Indicator Marker X 1
dissect.price_indicator_marker_x_1 = function(buffer, offset, packet, parent)
  local length = size_of.price_indicator_marker_x_1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.price_indicator_marker_x_1(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.price_indicator_marker_x_1, range, value, display)

  return offset + length, value
end

-- Size: Timestamp
size_of.timestamp = 9

-- Display: Timestamp
display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
dissect.timestamp = function(buffer, offset, packet, parent)
  local length = size_of.timestamp
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = display.timestamp(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Size: Net Change Fraction Indicator X 1
size_of.net_change_fraction_indicator_x_1 = 1

-- Display: Net Change Fraction Indicator X 1
display.net_change_fraction_indicator_x_1 = function(value)
  return "Net Change Fraction Indicator X 1: "..value
end

-- Dissect: Net Change Fraction Indicator X 1
dissect.net_change_fraction_indicator_x_1 = function(buffer, offset, packet, parent)
  local length = size_of.net_change_fraction_indicator_x_1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.net_change_fraction_indicator_x_1(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.net_change_fraction_indicator_x_1, range, value, display)

  return offset + length, value
end

-- Size: Net Change
size_of.net_change = 6

-- Display: Net Change
display.net_change = function(value)
  return "Net Change: "..value
end

-- Dissect: Net Change
dissect.net_change = function(buffer, offset, packet, parent)
  local length = size_of.net_change
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = display.net_change(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.net_change, range, value, display)

  return offset + length, value
end

-- Size: Net Change Sign X 1
size_of.net_change_sign_x_1 = 1

-- Display: Net Change Sign X 1
display.net_change_sign_x_1 = function(value)
  return "Net Change Sign X 1: "..value
end

-- Dissect: Net Change Sign X 1
dissect.net_change_sign_x_1 = function(buffer, offset, packet, parent)
  local length = size_of.net_change_sign_x_1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.net_change_sign_x_1(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.net_change_sign_x_1, range, value, display)

  return offset + length, value
end

-- Size: Trade Price Fraction Indicator
size_of.trade_price_fraction_indicator = 1

-- Display: Trade Price Fraction Indicator
display.trade_price_fraction_indicator = function(value)
  return "Trade Price Fraction Indicator: "..value
end

-- Dissect: Trade Price Fraction Indicator
dissect.trade_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = size_of.trade_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.trade_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.trade_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Trade Price
size_of.trade_price = 6

-- Display: Trade Price
display.trade_price = function(value)
  return "Trade Price: "..value
end

-- Dissect: Trade Price
dissect.trade_price = function(buffer, offset, packet, parent)
  local length = size_of.trade_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = display.trade_price(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Size: Trade Volume
size_of.trade_volume = 8

-- Display: Trade Volume
display.trade_volume = function(value)
  return "Trade Volume: "..value
end

-- Dissect: Trade Volume
dissect.trade_volume = function(buffer, offset, packet, parent)
  local length = size_of.trade_volume
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = display.trade_volume(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.trade_volume, range, value, display)

  return offset + length, value
end

-- Size: Fixed Rate Fraction Indicator
size_of.fixed_rate_fraction_indicator = 1

-- Display: Fixed Rate Fraction Indicator
display.fixed_rate_fraction_indicator = function(value)
  return "Fixed Rate Fraction Indicator: "..value
end

-- Dissect: Fixed Rate Fraction Indicator
dissect.fixed_rate_fraction_indicator = function(buffer, offset, packet, parent)
  local length = size_of.fixed_rate_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.fixed_rate_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.fixed_rate_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Fixed Rate
size_of.fixed_rate = 5

-- Display: Fixed Rate
display.fixed_rate = function(value)
  return "Fixed Rate: "..value
end

-- Dissect: Fixed Rate
dissect.fixed_rate = function(buffer, offset, packet, parent)
  local length = size_of.fixed_rate
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = display.fixed_rate(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.fixed_rate, range, value, display)

  return offset + length, value
end

-- Size: Tenor
size_of.tenor = 2

-- Display: Tenor
display.tenor = function(value)
  return "Tenor: "..value
end

-- Dissect: Tenor
dissect.tenor = function(buffer, offset, packet, parent)
  local length = size_of.tenor
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = display.tenor(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.tenor, range, value, display)

  return offset + length, value
end

-- Size: Expiry Day
size_of.expiry_day = 2

-- Display: Expiry Day
display.expiry_day = function(value)
  return "Expiry Day: "..value
end

-- Dissect: Expiry Day
dissect.expiry_day = function(buffer, offset, packet, parent)
  local length = size_of.expiry_day
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = display.expiry_day(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.expiry_day, range, value, display)

  return offset + length, value
end

-- Size: Expiry Year
size_of.expiry_year = 2

-- Display: Expiry Year
display.expiry_year = function(value)
  return "Expiry Year: "..value
end

-- Dissect: Expiry Year
dissect.expiry_year = function(buffer, offset, packet, parent)
  local length = size_of.expiry_year
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = display.expiry_year(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.expiry_year, range, value, display)

  return offset + length, value
end

-- Size: Expiry Month
size_of.expiry_month = 1

-- Display: Expiry Month
display.expiry_month = function(value)
  return "Expiry Month: "..value
end

-- Dissect: Expiry Month
dissect.expiry_month = function(buffer, offset, packet, parent)
  local length = size_of.expiry_month
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.expiry_month(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.expiry_month, range, value, display)

  return offset + length, value
end

-- Size: Exchange I D
size_of.exchange_i_d = 1

-- Display: Exchange I D
display.exchange_i_d = function(value)
  return "Exchange I D: "..value
end

-- Dissect: Exchange I D
dissect.exchange_i_d = function(buffer, offset, packet, parent)
  local length = size_of.exchange_i_d
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.exchange_i_d(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.exchange_i_d, range, value, display)

  return offset + length, value
end

-- Calculate size of: Swap Future Trade Correction Message
size_of.swap_future_trade_correction_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_i_d

  index = index + size_of.root_symbol_x_6

  index = index + size_of.expiry_month

  index = index + size_of.expiry_year

  index = index + size_of.expiry_day

  index = index + size_of.tenor

  index = index + size_of.fixed_rate

  index = index + size_of.fixed_rate_fraction_indicator

  index = index + size_of.trade_volume

  index = index + size_of.trade_price

  index = index + size_of.trade_price_fraction_indicator

  index = index + size_of.net_change_sign_x_1

  index = index + size_of.net_change

  index = index + size_of.net_change_fraction_indicator_x_1

  index = index + size_of.timestamp

  index = index + size_of.price_indicator_marker_x_1

  index = index + size_of.trade_number

  return index
end

-- Display: Swap Future Trade Correction Message
display.swap_future_trade_correction_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Swap Future Trade Correction Message
dissect.swap_future_trade_correction_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange I D: 1 Byte Ascii String
  index, exchange_i_d = dissect.exchange_i_d(buffer, index, packet, parent)

  -- Root Symbol X 6: 6 Byte Ascii String
  index, root_symbol_x_6 = dissect.root_symbol_x_6(buffer, index, packet, parent)

  -- Expiry Month: 1 Byte Ascii String
  index, expiry_month = dissect.expiry_month(buffer, index, packet, parent)

  -- Expiry Year: 2 Byte Ascii String
  index, expiry_year = dissect.expiry_year(buffer, index, packet, parent)

  -- Expiry Day: 2 Byte Ascii String
  index, expiry_day = dissect.expiry_day(buffer, index, packet, parent)

  -- Tenor: 2 Byte Ascii String
  index, tenor = dissect.tenor(buffer, index, packet, parent)

  -- Fixed Rate: 5 Byte Ascii String
  index, fixed_rate = dissect.fixed_rate(buffer, index, packet, parent)

  -- Fixed Rate Fraction Indicator: 1 Byte Ascii String
  index, fixed_rate_fraction_indicator = dissect.fixed_rate_fraction_indicator(buffer, index, packet, parent)

  -- Trade Volume: 8 Byte Ascii String
  index, trade_volume = dissect.trade_volume(buffer, index, packet, parent)

  -- Trade Price: 6 Byte Ascii String
  index, trade_price = dissect.trade_price(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: 1 Byte Ascii String
  index, trade_price_fraction_indicator = dissect.trade_price_fraction_indicator(buffer, index, packet, parent)

  -- Net Change Sign X 1: 1 Byte Ascii String
  index, net_change_sign_x_1 = dissect.net_change_sign_x_1(buffer, index, packet, parent)

  -- Net Change: 6 Byte Ascii String
  index, net_change = dissect.net_change(buffer, index, packet, parent)

  -- Net Change Fraction Indicator X 1: 1 Byte Ascii String
  index, net_change_fraction_indicator_x_1 = dissect.net_change_fraction_indicator_x_1(buffer, index, packet, parent)

  -- Timestamp: 9 Byte Ascii String
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Price Indicator Marker X 1: 1 Byte Ascii String
  index, price_indicator_marker_x_1 = dissect.price_indicator_marker_x_1(buffer, index, packet, parent)

  -- Trade Number: 8 Byte Ascii String
  index, trade_number = dissect.trade_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Swap Future Trade Correction Message
dissect.swap_future_trade_correction_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.swap_future_trade_correction_message then
    local length = size_of.swap_future_trade_correction_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.swap_future_trade_correction_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.swap_future_trade_correction_message, range, display)
  end

  return dissect.swap_future_trade_correction_message_fields(buffer, offset, packet, parent)
end

-- Size: Filler N 6
size_of.filler_n_6 = 6

-- Display: Filler N 6
display.filler_n_6 = function(value)
  return "Filler N 6: "..value
end

-- Dissect: Filler N 6
dissect.filler_n_6 = function(buffer, offset, packet, parent)
  local length = size_of.filler_n_6
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = display.filler_n_6(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.filler_n_6, range, value, display)

  return offset + length, value
end

-- Size: Trade Price Sign
size_of.trade_price_sign = 1

-- Display: Trade Price Sign
display.trade_price_sign = function(value)
  return "Trade Price Sign: "..value
end

-- Dissect: Trade Price Sign
dissect.trade_price_sign = function(buffer, offset, packet, parent)
  local length = size_of.trade_price_sign
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.trade_price_sign(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.trade_price_sign, range, value, display)

  return offset + length, value
end

-- Size: Volume
size_of.volume = 8

-- Display: Volume
display.volume = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
dissect.volume = function(buffer, offset, packet, parent)
  local length = size_of.volume
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = display.volume(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.volume, range, value, display)

  return offset + length, value
end

-- Calculate size of: Strategy Trade Correction Message
size_of.strategy_trade_correction_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_i_d

  index = index + size_of.symbol

  index = index + size_of.volume

  index = index + size_of.trade_price_sign

  index = index + size_of.trade_price

  index = index + size_of.trade_price_fraction_indicator

  index = index + size_of.net_change_sign_x_1

  index = index + size_of.net_change

  index = index + size_of.net_change_fraction_indicator_x_1

  index = index + size_of.filler_n_6

  index = index + size_of.timestamp

  index = index + size_of.price_indicator_marker_x_1

  index = index + size_of.trade_number

  return index
end

-- Display: Strategy Trade Correction Message
display.strategy_trade_correction_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Strategy Trade Correction Message
dissect.strategy_trade_correction_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange I D: 1 Byte Ascii String
  index, exchange_i_d = dissect.exchange_i_d(buffer, index, packet, parent)

  -- Symbol: 30 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Volume: 8 Byte Ascii String
  index, volume = dissect.volume(buffer, index, packet, parent)

  -- Trade Price Sign: 1 Byte Ascii String
  index, trade_price_sign = dissect.trade_price_sign(buffer, index, packet, parent)

  -- Trade Price: 6 Byte Ascii String
  index, trade_price = dissect.trade_price(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: 1 Byte Ascii String
  index, trade_price_fraction_indicator = dissect.trade_price_fraction_indicator(buffer, index, packet, parent)

  -- Net Change Sign X 1: 1 Byte Ascii String
  index, net_change_sign_x_1 = dissect.net_change_sign_x_1(buffer, index, packet, parent)

  -- Net Change: 6 Byte Ascii String
  index, net_change = dissect.net_change(buffer, index, packet, parent)

  -- Net Change Fraction Indicator X 1: 1 Byte Ascii String
  index, net_change_fraction_indicator_x_1 = dissect.net_change_fraction_indicator_x_1(buffer, index, packet, parent)

  -- Filler N 6: 6 Byte Ascii String
  index, filler_n_6 = dissect.filler_n_6(buffer, index, packet, parent)

  -- Timestamp: 9 Byte Ascii String
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Price Indicator Marker X 1: 1 Byte Ascii String
  index, price_indicator_marker_x_1 = dissect.price_indicator_marker_x_1(buffer, index, packet, parent)

  -- Trade Number: 8 Byte Ascii String
  index, trade_number = dissect.trade_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Trade Correction Message
dissect.strategy_trade_correction_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.strategy_trade_correction_message then
    local length = size_of.strategy_trade_correction_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.strategy_trade_correction_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_trade_correction_message, range, display)
  end

  return dissect.strategy_trade_correction_message_fields(buffer, offset, packet, parent)
end

-- Size: Delivery Day
size_of.delivery_day = 2

-- Display: Delivery Day
display.delivery_day = function(value)
  return "Delivery Day: "..value
end

-- Dissect: Delivery Day
dissect.delivery_day = function(buffer, offset, packet, parent)
  local length = size_of.delivery_day
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = display.delivery_day(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.delivery_day, range, value, display)

  return offset + length, value
end

-- Size: Delivery Year N 2
size_of.delivery_year_n_2 = 2

-- Display: Delivery Year N 2
display.delivery_year_n_2 = function(value)
  return "Delivery Year N 2: "..value
end

-- Dissect: Delivery Year N 2
dissect.delivery_year_n_2 = function(buffer, offset, packet, parent)
  local length = size_of.delivery_year_n_2
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = display.delivery_year_n_2(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.delivery_year_n_2, range, value, display)

  return offset + length, value
end

-- Size: Delivery Month
size_of.delivery_month = 1

-- Display: Delivery Month
display.delivery_month = function(value)
  return "Delivery Month: "..value
end

-- Dissect: Delivery Month
dissect.delivery_month = function(buffer, offset, packet, parent)
  local length = size_of.delivery_month
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.delivery_month(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.delivery_month, range, value, display)

  return offset + length, value
end

-- Size: Root Symbol A 6
size_of.root_symbol_a_6 = 6

-- Display: Root Symbol A 6
display.root_symbol_a_6 = function(value)
  return "Root Symbol A 6: "..value
end

-- Dissect: Root Symbol A 6
dissect.root_symbol_a_6 = function(buffer, offset, packet, parent)
  local length = size_of.root_symbol_a_6
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.root_symbol_a_6(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.root_symbol_a_6, range, value, display)

  return offset + length, value
end

-- Calculate size of: Futures Trade Correction Message
size_of.futures_trade_correction_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_i_d

  index = index + size_of.root_symbol_a_6

  index = index + size_of.delivery_month

  index = index + size_of.delivery_year_n_2

  index = index + size_of.delivery_day

  index = index + size_of.volume

  index = index + size_of.trade_price

  index = index + size_of.trade_price_fraction_indicator

  index = index + size_of.net_change_sign_x_1

  index = index + size_of.net_change

  index = index + size_of.net_change_fraction_indicator_x_1

  index = index + size_of.filler_n_6

  index = index + size_of.timestamp

  index = index + size_of.price_indicator_marker_x_1

  index = index + size_of.trade_number

  return index
end

-- Display: Futures Trade Correction Message
display.futures_trade_correction_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Futures Trade Correction Message
dissect.futures_trade_correction_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange I D: 1 Byte Ascii String
  index, exchange_i_d = dissect.exchange_i_d(buffer, index, packet, parent)

  -- Root Symbol A 6: 6 Byte Ascii String
  index, root_symbol_a_6 = dissect.root_symbol_a_6(buffer, index, packet, parent)

  -- Delivery Month: 1 Byte Ascii String
  index, delivery_month = dissect.delivery_month(buffer, index, packet, parent)

  -- Delivery Year N 2: 2 Byte Ascii String
  index, delivery_year_n_2 = dissect.delivery_year_n_2(buffer, index, packet, parent)

  -- Delivery Day: 2 Byte Ascii String
  index, delivery_day = dissect.delivery_day(buffer, index, packet, parent)

  -- Volume: 8 Byte Ascii String
  index, volume = dissect.volume(buffer, index, packet, parent)

  -- Trade Price: 6 Byte Ascii String
  index, trade_price = dissect.trade_price(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: 1 Byte Ascii String
  index, trade_price_fraction_indicator = dissect.trade_price_fraction_indicator(buffer, index, packet, parent)

  -- Net Change Sign X 1: 1 Byte Ascii String
  index, net_change_sign_x_1 = dissect.net_change_sign_x_1(buffer, index, packet, parent)

  -- Net Change: 6 Byte Ascii String
  index, net_change = dissect.net_change(buffer, index, packet, parent)

  -- Net Change Fraction Indicator X 1: 1 Byte Ascii String
  index, net_change_fraction_indicator_x_1 = dissect.net_change_fraction_indicator_x_1(buffer, index, packet, parent)

  -- Filler N 6: 6 Byte Ascii String
  index, filler_n_6 = dissect.filler_n_6(buffer, index, packet, parent)

  -- Timestamp: 9 Byte Ascii String
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Price Indicator Marker X 1: 1 Byte Ascii String
  index, price_indicator_marker_x_1 = dissect.price_indicator_marker_x_1(buffer, index, packet, parent)

  -- Trade Number: 8 Byte Ascii String
  index, trade_number = dissect.trade_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Trade Correction Message
dissect.futures_trade_correction_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.futures_trade_correction_message then
    local length = size_of.futures_trade_correction_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.futures_trade_correction_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.futures_trade_correction_message, range, display)
  end

  return dissect.futures_trade_correction_message_fields(buffer, offset, packet, parent)
end

-- Size: Filler X 2
size_of.filler_x_2 = 2

-- Display: Filler X 2
display.filler_x_2 = function(value)
  return "Filler X 2: "..value
end

-- Dissect: Filler X 2
dissect.filler_x_2 = function(buffer, offset, packet, parent)
  local length = size_of.filler_x_2
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.filler_x_2(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.filler_x_2, range, value, display)

  return offset + length, value
end

-- Size: Open Interest
size_of.open_interest = 7

-- Display: Open Interest
display.open_interest = function(value)
  return "Open Interest: "..value
end

-- Dissect: Open Interest
dissect.open_interest = function(buffer, offset, packet, parent)
  local length = size_of.open_interest
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = display.open_interest(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.open_interest, range, value, display)

  return offset + length, value
end

-- Size: Net Change Fraction Indicator A 1
size_of.net_change_fraction_indicator_a_1 = 1

-- Display: Net Change Fraction Indicator A 1
display.net_change_fraction_indicator_a_1 = function(value)
  return "Net Change Fraction Indicator A 1: "..value
end

-- Dissect: Net Change Fraction Indicator A 1
dissect.net_change_fraction_indicator_a_1 = function(buffer, offset, packet, parent)
  local length = size_of.net_change_fraction_indicator_a_1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.net_change_fraction_indicator_a_1(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.net_change_fraction_indicator_a_1, range, value, display)

  return offset + length, value
end

-- Size: Net Change Sign A 1
size_of.net_change_sign_a_1 = 1

-- Display: Net Change Sign A 1
display.net_change_sign_a_1 = function(value)
  return "Net Change Sign A 1: "..value
end

-- Dissect: Net Change Sign A 1
dissect.net_change_sign_a_1 = function(buffer, offset, packet, parent)
  local length = size_of.net_change_sign_a_1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.net_change_sign_a_1(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.net_change_sign_a_1, range, value, display)

  return offset + length, value
end

-- Size: Price Indicator Marker A 1
size_of.price_indicator_marker_a_1 = 1

-- Display: Price Indicator Marker A 1
display.price_indicator_marker_a_1 = function(value)
  return "Price Indicator Marker A 1: "..value
end

-- Dissect: Price Indicator Marker A 1
dissect.price_indicator_marker_a_1 = function(buffer, offset, packet, parent)
  local length = size_of.price_indicator_marker_a_1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.price_indicator_marker_a_1(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.price_indicator_marker_a_1, range, value, display)

  return offset + length, value
end

-- Size: Strike Price Fraction Indicator
size_of.strike_price_fraction_indicator = 1

-- Display: Strike Price Fraction Indicator
display.strike_price_fraction_indicator = function(value)
  return "Strike Price Fraction Indicator: "..value
end

-- Dissect: Strike Price Fraction Indicator
dissect.strike_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = size_of.strike_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.strike_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.strike_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Strike Price N 7
size_of.strike_price_n_7 = 7

-- Display: Strike Price N 7
display.strike_price_n_7 = function(value)
  return "Strike Price N 7: "..value
end

-- Dissect: Strike Price N 7
dissect.strike_price_n_7 = function(buffer, offset, packet, parent)
  local length = size_of.strike_price_n_7
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = display.strike_price_n_7(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.strike_price_n_7, range, value, display)

  return offset + length, value
end

-- Size: Call Put Code
size_of.call_put_code = 1

-- Display: Call Put Code
display.call_put_code = function(value)
  if value == "C" then
    return "Call Put Code: Call (C)"
  end
  if value == "P" then
    return "Call Put Code: Put (P)"
  end

  return "Call Put Code: Unknown("..value..")"
end

-- Dissect: Call Put Code
dissect.call_put_code = function(buffer, offset, packet, parent)
  local length = size_of.call_put_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.call_put_code(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.call_put_code, range, value, display)

  return offset + length, value
end

-- Size: Contract Month Code
size_of.contract_month_code = 1

-- Display: Contract Month Code
display.contract_month_code = function(value)
  return "Contract Month Code: "..value
end

-- Dissect: Contract Month Code
dissect.contract_month_code = function(buffer, offset, packet, parent)
  local length = size_of.contract_month_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.contract_month_code(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.contract_month_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: Future Options Trade Correction Message
size_of.future_options_trade_correction_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id_a_1

  index = index + size_of.root_symbol_a_6

  index = index + size_of.contract_month_code

  index = index + size_of.expiry_year

  index = index + size_of.expiry_day

  index = index + size_of.call_put_code

  index = index + size_of.strike_price_n_7

  index = index + size_of.strike_price_fraction_indicator

  index = index + size_of.volume

  index = index + size_of.trade_price

  index = index + size_of.trade_price_fraction_indicator

  index = index + size_of.price_indicator_marker_a_1

  index = index + size_of.net_change_sign_a_1

  index = index + size_of.net_change

  index = index + size_of.net_change_fraction_indicator_a_1

  index = index + size_of.filler_n_6

  index = index + size_of.timestamp

  index = index + size_of.open_interest

  index = index + size_of.filler_x_2

  index = index + size_of.trade_number

  return index
end

-- Display: Future Options Trade Correction Message
display.future_options_trade_correction_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Future Options Trade Correction Message
dissect.future_options_trade_correction_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: 1 Byte Ascii String
  index, exchange_id_a_1 = dissect.exchange_id_a_1(buffer, index, packet, parent)

  -- Root Symbol A 6: 6 Byte Ascii String
  index, root_symbol_a_6 = dissect.root_symbol_a_6(buffer, index, packet, parent)

  -- Contract Month Code: 1 Byte Ascii String
  index, contract_month_code = dissect.contract_month_code(buffer, index, packet, parent)

  -- Expiry Year: 2 Byte Ascii String
  index, expiry_year = dissect.expiry_year(buffer, index, packet, parent)

  -- Expiry Day: 2 Byte Ascii String
  index, expiry_day = dissect.expiry_day(buffer, index, packet, parent)

  -- Call Put Code: 1 Byte Ascii String Enum with 2 values
  index, call_put_code = dissect.call_put_code(buffer, index, packet, parent)

  -- Strike Price N 7: 7 Byte Ascii String
  index, strike_price_n_7 = dissect.strike_price_n_7(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: 1 Byte Ascii String
  index, strike_price_fraction_indicator = dissect.strike_price_fraction_indicator(buffer, index, packet, parent)

  -- Volume: 8 Byte Ascii String
  index, volume = dissect.volume(buffer, index, packet, parent)

  -- Trade Price: 6 Byte Ascii String
  index, trade_price = dissect.trade_price(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: 1 Byte Ascii String
  index, trade_price_fraction_indicator = dissect.trade_price_fraction_indicator(buffer, index, packet, parent)

  -- Price Indicator Marker A 1: 1 Byte Ascii String
  index, price_indicator_marker_a_1 = dissect.price_indicator_marker_a_1(buffer, index, packet, parent)

  -- Net Change Sign A 1: 1 Byte Ascii String
  index, net_change_sign_a_1 = dissect.net_change_sign_a_1(buffer, index, packet, parent)

  -- Net Change: 6 Byte Ascii String
  index, net_change = dissect.net_change(buffer, index, packet, parent)

  -- Net Change Fraction Indicator A 1: 1 Byte Ascii String
  index, net_change_fraction_indicator_a_1 = dissect.net_change_fraction_indicator_a_1(buffer, index, packet, parent)

  -- Filler N 6: 6 Byte Ascii String
  index, filler_n_6 = dissect.filler_n_6(buffer, index, packet, parent)

  -- Timestamp: 9 Byte Ascii String
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Open Interest: 7 Byte Ascii String
  index, open_interest = dissect.open_interest(buffer, index, packet, parent)

  -- Filler X 2: 2 Byte Ascii String
  index, filler_x_2 = dissect.filler_x_2(buffer, index, packet, parent)

  -- Trade Number: 8 Byte Ascii String
  index, trade_number = dissect.trade_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Options Trade Correction Message
dissect.future_options_trade_correction_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.future_options_trade_correction_message then
    local length = size_of.future_options_trade_correction_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.future_options_trade_correction_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.future_options_trade_correction_message, range, display)
  end

  return dissect.future_options_trade_correction_message_fields(buffer, offset, packet, parent)
end

-- Size: Filler X 1
size_of.filler_x_1 = 1

-- Display: Filler X 1
display.filler_x_1 = function(value)
  return "Filler X 1: "..value
end

-- Dissect: Filler X 1
dissect.filler_x_1 = function(buffer, offset, packet, parent)
  local length = size_of.filler_x_1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.filler_x_1(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.filler_x_1, range, value, display)

  return offset + length, value
end

-- Size: Filler A 1
size_of.filler_a_1 = 1

-- Display: Filler A 1
display.filler_a_1 = function(value)
  return "Filler A 1: "..value
end

-- Dissect: Filler A 1
dissect.filler_a_1 = function(buffer, offset, packet, parent)
  local length = size_of.filler_a_1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.filler_a_1(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.filler_a_1, range, value, display)

  return offset + length, value
end

-- Calculate size of: Option Trade Correction Message
size_of.option_trade_correction_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id_a_1

  index = index + size_of.root_symbol_x_6

  index = index + size_of.expiry_month

  index = index + size_of.filler_a_1

  index = index + size_of.strike_price_n_7

  index = index + size_of.strike_price_fraction_indicator

  index = index + size_of.expiry_year

  index = index + size_of.expiry_day

  index = index + size_of.volume

  index = index + size_of.trade_price

  index = index + size_of.trade_price_fraction_indicator

  index = index + size_of.net_change_sign_a_1

  index = index + size_of.net_change

  index = index + size_of.net_change_fraction_indicator_x_1

  index = index + size_of.filler_n_6

  index = index + size_of.timestamp

  index = index + size_of.open_interest

  index = index + size_of.filler_x_1

  index = index + size_of.price_indicator_marker_a_1

  index = index + size_of.trade_number

  return index
end

-- Display: Option Trade Correction Message
display.option_trade_correction_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Option Trade Correction Message
dissect.option_trade_correction_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: 1 Byte Ascii String
  index, exchange_id_a_1 = dissect.exchange_id_a_1(buffer, index, packet, parent)

  -- Root Symbol X 6: 6 Byte Ascii String
  index, root_symbol_x_6 = dissect.root_symbol_x_6(buffer, index, packet, parent)

  -- Expiry Month: 1 Byte Ascii String
  index, expiry_month = dissect.expiry_month(buffer, index, packet, parent)

  -- Filler A 1: 1 Byte Ascii String
  index, filler_a_1 = dissect.filler_a_1(buffer, index, packet, parent)

  -- Strike Price N 7: 7 Byte Ascii String
  index, strike_price_n_7 = dissect.strike_price_n_7(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: 1 Byte Ascii String
  index, strike_price_fraction_indicator = dissect.strike_price_fraction_indicator(buffer, index, packet, parent)

  -- Expiry Year: 2 Byte Ascii String
  index, expiry_year = dissect.expiry_year(buffer, index, packet, parent)

  -- Expiry Day: 2 Byte Ascii String
  index, expiry_day = dissect.expiry_day(buffer, index, packet, parent)

  -- Volume: 8 Byte Ascii String
  index, volume = dissect.volume(buffer, index, packet, parent)

  -- Trade Price: 6 Byte Ascii String
  index, trade_price = dissect.trade_price(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: 1 Byte Ascii String
  index, trade_price_fraction_indicator = dissect.trade_price_fraction_indicator(buffer, index, packet, parent)

  -- Net Change Sign A 1: 1 Byte Ascii String
  index, net_change_sign_a_1 = dissect.net_change_sign_a_1(buffer, index, packet, parent)

  -- Net Change: 6 Byte Ascii String
  index, net_change = dissect.net_change(buffer, index, packet, parent)

  -- Net Change Fraction Indicator X 1: 1 Byte Ascii String
  index, net_change_fraction_indicator_x_1 = dissect.net_change_fraction_indicator_x_1(buffer, index, packet, parent)

  -- Filler N 6: 6 Byte Ascii String
  index, filler_n_6 = dissect.filler_n_6(buffer, index, packet, parent)

  -- Timestamp: 9 Byte Ascii String
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Open Interest: 7 Byte Ascii String
  index, open_interest = dissect.open_interest(buffer, index, packet, parent)

  -- Filler X 1: 1 Byte Ascii String
  index, filler_x_1 = dissect.filler_x_1(buffer, index, packet, parent)

  -- Price Indicator Marker A 1: 1 Byte Ascii String
  index, price_indicator_marker_a_1 = dissect.price_indicator_marker_a_1(buffer, index, packet, parent)

  -- Trade Number: 8 Byte Ascii String
  index, trade_number = dissect.trade_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Trade Correction Message
dissect.option_trade_correction_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.option_trade_correction_message then
    local length = size_of.option_trade_correction_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.option_trade_correction_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.option_trade_correction_message, range, display)
  end

  return dissect.option_trade_correction_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Swap Future Beginning Of Summary Message
size_of.swap_future_beginning_of_summary_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id_a_1

  return index
end

-- Display: Swap Future Beginning Of Summary Message
display.swap_future_beginning_of_summary_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Swap Future Beginning Of Summary Message
dissect.swap_future_beginning_of_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: 1 Byte Ascii String
  index, exchange_id_a_1 = dissect.exchange_id_a_1(buffer, index, packet, parent)

  return index
end

-- Dissect: Swap Future Beginning Of Summary Message
dissect.swap_future_beginning_of_summary_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.swap_future_beginning_of_summary_message then
    local length = size_of.swap_future_beginning_of_summary_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.swap_future_beginning_of_summary_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.swap_future_beginning_of_summary_message, range, display)
  end

  return dissect.swap_future_beginning_of_summary_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Beginning Of Strategy Summary Message
size_of.beginning_of_strategy_summary_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id_a_1

  return index
end

-- Display: Beginning Of Strategy Summary Message
display.beginning_of_strategy_summary_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Beginning Of Strategy Summary Message
dissect.beginning_of_strategy_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: 1 Byte Ascii String
  index, exchange_id_a_1 = dissect.exchange_id_a_1(buffer, index, packet, parent)

  return index
end

-- Dissect: Beginning Of Strategy Summary Message
dissect.beginning_of_strategy_summary_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.beginning_of_strategy_summary_message then
    local length = size_of.beginning_of_strategy_summary_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.beginning_of_strategy_summary_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.beginning_of_strategy_summary_message, range, display)
  end

  return dissect.beginning_of_strategy_summary_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Beginning Of Futures Summary Message
size_of.beginning_of_futures_summary_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id_a_1

  return index
end

-- Display: Beginning Of Futures Summary Message
display.beginning_of_futures_summary_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Beginning Of Futures Summary Message
dissect.beginning_of_futures_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: 1 Byte Ascii String
  index, exchange_id_a_1 = dissect.exchange_id_a_1(buffer, index, packet, parent)

  return index
end

-- Dissect: Beginning Of Futures Summary Message
dissect.beginning_of_futures_summary_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.beginning_of_futures_summary_message then
    local length = size_of.beginning_of_futures_summary_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.beginning_of_futures_summary_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.beginning_of_futures_summary_message, range, display)
  end

  return dissect.beginning_of_futures_summary_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Beginning Of Future Options Summary Message
size_of.beginning_of_future_options_summary_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id_a_1

  return index
end

-- Display: Beginning Of Future Options Summary Message
display.beginning_of_future_options_summary_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Beginning Of Future Options Summary Message
dissect.beginning_of_future_options_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: 1 Byte Ascii String
  index, exchange_id_a_1 = dissect.exchange_id_a_1(buffer, index, packet, parent)

  return index
end

-- Dissect: Beginning Of Future Options Summary Message
dissect.beginning_of_future_options_summary_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.beginning_of_future_options_summary_message then
    local length = size_of.beginning_of_future_options_summary_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.beginning_of_future_options_summary_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.beginning_of_future_options_summary_message, range, display)
  end

  return dissect.beginning_of_future_options_summary_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Beginning Of Options Summary Message
size_of.beginning_of_options_summary_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id_a_1

  return index
end

-- Display: Beginning Of Options Summary Message
display.beginning_of_options_summary_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Beginning Of Options Summary Message
dissect.beginning_of_options_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: 1 Byte Ascii String
  index, exchange_id_a_1 = dissect.exchange_id_a_1(buffer, index, packet, parent)

  return index
end

-- Dissect: Beginning Of Options Summary Message
dissect.beginning_of_options_summary_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.beginning_of_options_summary_message then
    local length = size_of.beginning_of_options_summary_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.beginning_of_options_summary_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.beginning_of_options_summary_message, range, display)
  end

  return dissect.beginning_of_options_summary_message_fields(buffer, offset, packet, parent)
end

-- Size: Reason
size_of.reason = 1

-- Display: Reason
display.reason = function(value)
  return "Reason: "..value
end

-- Dissect: Reason
dissect.reason = function(buffer, offset, packet, parent)
  local length = size_of.reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.reason(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.reason, range, value, display)

  return offset + length, value
end

-- Size: Previous Reset Rate Fraction Indicator
size_of.previous_reset_rate_fraction_indicator = 1

-- Display: Previous Reset Rate Fraction Indicator
display.previous_reset_rate_fraction_indicator = function(value)
  return "Previous Reset Rate Fraction Indicator: "..value
end

-- Dissect: Previous Reset Rate Fraction Indicator
dissect.previous_reset_rate_fraction_indicator = function(buffer, offset, packet, parent)
  local length = size_of.previous_reset_rate_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.previous_reset_rate_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.previous_reset_rate_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Previous Reset Rate
size_of.previous_reset_rate = 6

-- Display: Previous Reset Rate
display.previous_reset_rate = function(value)
  return "Previous Reset Rate: "..value
end

-- Dissect: Previous Reset Rate
dissect.previous_reset_rate = function(buffer, offset, packet, parent)
  local length = size_of.previous_reset_rate
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.previous_reset_rate(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.previous_reset_rate, range, value, display)

  return offset + length, value
end

-- Size: Previous Settlement Price Fraction Indicator
size_of.previous_settlement_price_fraction_indicator = 1

-- Display: Previous Settlement Price Fraction Indicator
display.previous_settlement_price_fraction_indicator = function(value)
  return "Previous Settlement Price Fraction Indicator: "..value
end

-- Dissect: Previous Settlement Price Fraction Indicator
dissect.previous_settlement_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = size_of.previous_settlement_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.previous_settlement_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.previous_settlement_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Previous Settlement Price
size_of.previous_settlement_price = 6

-- Display: Previous Settlement Price
display.previous_settlement_price = function(value)
  return "Previous Settlement Price: "..value
end

-- Dissect: Previous Settlement Price
dissect.previous_settlement_price = function(buffer, offset, packet, parent)
  local length = size_of.previous_settlement_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = display.previous_settlement_price(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.previous_settlement_price, range, value, display)

  return offset + length, value
end

-- Size: Price Alignment Interest Fraction Indicator
size_of.price_alignment_interest_fraction_indicator = 1

-- Display: Price Alignment Interest Fraction Indicator
display.price_alignment_interest_fraction_indicator = function(value)
  return "Price Alignment Interest Fraction Indicator: "..value
end

-- Dissect: Price Alignment Interest Fraction Indicator
dissect.price_alignment_interest_fraction_indicator = function(buffer, offset, packet, parent)
  local length = size_of.price_alignment_interest_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.price_alignment_interest_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.price_alignment_interest_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Price Alignment Interest C
size_of.price_alignment_interest_c = 11

-- Display: Price Alignment Interest C
display.price_alignment_interest_c = function(value)
  return "Price Alignment Interest C: "..value
end

-- Dissect: Price Alignment Interest C
dissect.price_alignment_interest_c = function(buffer, offset, packet, parent)
  local length = size_of.price_alignment_interest_c
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = display.price_alignment_interest_c(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.price_alignment_interest_c, range, value, display)

  return offset + length, value
end

-- Size: Historical Coupon Fraction Indicator
size_of.historical_coupon_fraction_indicator = 1

-- Display: Historical Coupon Fraction Indicator
display.historical_coupon_fraction_indicator = function(value)
  return "Historical Coupon Fraction Indicator: "..value
end

-- Dissect: Historical Coupon Fraction Indicator
dissect.historical_coupon_fraction_indicator = function(buffer, offset, packet, parent)
  local length = size_of.historical_coupon_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.historical_coupon_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.historical_coupon_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Historical Coupon B
size_of.historical_coupon_b = 11

-- Display: Historical Coupon B
display.historical_coupon_b = function(value)
  return "Historical Coupon B: "..value
end

-- Dissect: Historical Coupon B
dissect.historical_coupon_b = function(buffer, offset, packet, parent)
  local length = size_of.historical_coupon_b
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = display.historical_coupon_b(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.historical_coupon_b, range, value, display)

  return offset + length, value
end

-- Size: Net Present Value Fraction Indicator
size_of.net_present_value_fraction_indicator = 1

-- Display: Net Present Value Fraction Indicator
display.net_present_value_fraction_indicator = function(value)
  return "Net Present Value Fraction Indicator: "..value
end

-- Dissect: Net Present Value Fraction Indicator
dissect.net_present_value_fraction_indicator = function(buffer, offset, packet, parent)
  local length = size_of.net_present_value_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.net_present_value_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.net_present_value_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Net Present Value A
size_of.net_present_value_a = 11

-- Display: Net Present Value A
display.net_present_value_a = function(value)
  return "Net Present Value A: "..value
end

-- Dissect: Net Present Value A
dissect.net_present_value_a = function(buffer, offset, packet, parent)
  local length = size_of.net_present_value_a
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = display.net_present_value_a(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.net_present_value_a, range, value, display)

  return offset + length, value
end

-- Size: Settlement Price Fraction Indicator X 1
size_of.settlement_price_fraction_indicator_x_1 = 1

-- Display: Settlement Price Fraction Indicator X 1
display.settlement_price_fraction_indicator_x_1 = function(value)
  return "Settlement Price Fraction Indicator X 1: "..value
end

-- Dissect: Settlement Price Fraction Indicator X 1
dissect.settlement_price_fraction_indicator_x_1 = function(buffer, offset, packet, parent)
  local length = size_of.settlement_price_fraction_indicator_x_1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.settlement_price_fraction_indicator_x_1(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.settlement_price_fraction_indicator_x_1, range, value, display)

  return offset + length, value
end

-- Size: Settlement Price
size_of.settlement_price = 6

-- Display: Settlement Price
display.settlement_price = function(value)
  return "Settlement Price: "..value
end

-- Dissect: Settlement Price
dissect.settlement_price = function(buffer, offset, packet, parent)
  local length = size_of.settlement_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = display.settlement_price(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.settlement_price, range, value, display)

  return offset + length, value
end

-- Size: Low Price Fraction Indicator
size_of.low_price_fraction_indicator = 1

-- Display: Low Price Fraction Indicator
display.low_price_fraction_indicator = function(value)
  return "Low Price Fraction Indicator: "..value
end

-- Dissect: Low Price Fraction Indicator
dissect.low_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = size_of.low_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.low_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.low_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Low Price
size_of.low_price = 6

-- Display: Low Price
display.low_price = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
dissect.low_price = function(buffer, offset, packet, parent)
  local length = size_of.low_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = display.low_price(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.low_price, range, value, display)

  return offset + length, value
end

-- Size: High Price Fraction Indicator
size_of.high_price_fraction_indicator = 1

-- Display: High Price Fraction Indicator
display.high_price_fraction_indicator = function(value)
  return "High Price Fraction Indicator: "..value
end

-- Dissect: High Price Fraction Indicator
dissect.high_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = size_of.high_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.high_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.high_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: High Price
size_of.high_price = 6

-- Display: High Price
display.high_price = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
dissect.high_price = function(buffer, offset, packet, parent)
  local length = size_of.high_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = display.high_price(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.high_price, range, value, display)

  return offset + length, value
end

-- Size: Open Price Fraction Indicator
size_of.open_price_fraction_indicator = 1

-- Display: Open Price Fraction Indicator
display.open_price_fraction_indicator = function(value)
  return "Open Price Fraction Indicator: "..value
end

-- Dissect: Open Price Fraction Indicator
dissect.open_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = size_of.open_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.open_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.open_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Open Price
size_of.open_price = 6

-- Display: Open Price
display.open_price = function(value)
  return "Open Price: "..value
end

-- Dissect: Open Price
dissect.open_price = function(buffer, offset, packet, parent)
  local length = size_of.open_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = display.open_price(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.open_price, range, value, display)

  return offset + length, value
end

-- Size: Last Price Fraction Indicator
size_of.last_price_fraction_indicator = 1

-- Display: Last Price Fraction Indicator
display.last_price_fraction_indicator = function(value)
  return "Last Price Fraction Indicator: "..value
end

-- Dissect: Last Price Fraction Indicator
dissect.last_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = size_of.last_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.last_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.last_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Last Price
size_of.last_price = 6

-- Display: Last Price
display.last_price = function(value)
  return "Last Price: "..value
end

-- Dissect: Last Price
dissect.last_price = function(buffer, offset, packet, parent)
  local length = size_of.last_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = display.last_price(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.last_price, range, value, display)

  return offset + length, value
end

-- Size: Ask Size
size_of.ask_size = 5

-- Display: Ask Size
display.ask_size = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
dissect.ask_size = function(buffer, offset, packet, parent)
  local length = size_of.ask_size
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.ask_size(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Size: Ask Price Fraction Indicator
size_of.ask_price_fraction_indicator = 1

-- Display: Ask Price Fraction Indicator
display.ask_price_fraction_indicator = function(value)
  return "Ask Price Fraction Indicator: "..value
end

-- Dissect: Ask Price Fraction Indicator
dissect.ask_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = size_of.ask_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.ask_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.ask_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Ask Price N 6
size_of.ask_price_n_6 = 6

-- Display: Ask Price N 6
display.ask_price_n_6 = function(value)
  return "Ask Price N 6: "..value
end

-- Dissect: Ask Price N 6
dissect.ask_price_n_6 = function(buffer, offset, packet, parent)
  local length = size_of.ask_price_n_6
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = display.ask_price_n_6(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.ask_price_n_6, range, value, display)

  return offset + length, value
end

-- Size: Bid Size
size_of.bid_size = 5

-- Display: Bid Size
display.bid_size = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
dissect.bid_size = function(buffer, offset, packet, parent)
  local length = size_of.bid_size
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.bid_size(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Size: Bid Price Fraction Indicator
size_of.bid_price_fraction_indicator = 1

-- Display: Bid Price Fraction Indicator
display.bid_price_fraction_indicator = function(value)
  return "Bid Price Fraction Indicator: "..value
end

-- Dissect: Bid Price Fraction Indicator
dissect.bid_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = size_of.bid_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.bid_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.bid_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Bid Price N 6
size_of.bid_price_n_6 = 6

-- Display: Bid Price N 6
display.bid_price_n_6 = function(value)
  return "Bid Price N 6: "..value
end

-- Dissect: Bid Price N 6
dissect.bid_price_n_6 = function(buffer, offset, packet, parent)
  local length = size_of.bid_price_n_6
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = display.bid_price_n_6(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.bid_price_n_6, range, value, display)

  return offset + length, value
end

-- Size: Exchange Id X 1
size_of.exchange_id_x_1 = 1

-- Display: Exchange Id X 1
display.exchange_id_x_1 = function(value)
  return "Exchange Id X 1: "..value
end

-- Dissect: Exchange Id X 1
dissect.exchange_id_x_1 = function(buffer, offset, packet, parent)
  local length = size_of.exchange_id_x_1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.exchange_id_x_1(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.exchange_id_x_1, range, value, display)

  return offset + length, value
end

-- Calculate size of: Swap Future Summary Message
size_of.swap_future_summary_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id_x_1

  index = index + size_of.root_symbol_a_6

  index = index + size_of.expiry_month

  index = index + size_of.expiry_year

  index = index + size_of.expiry_day

  index = index + size_of.tenor

  index = index + size_of.fixed_rate

  index = index + size_of.fixed_rate_fraction_indicator

  index = index + size_of.bid_price_n_6

  index = index + size_of.bid_price_fraction_indicator

  index = index + size_of.bid_size

  index = index + size_of.ask_price_n_6

  index = index + size_of.ask_price_fraction_indicator

  index = index + size_of.ask_size

  index = index + size_of.last_price

  index = index + size_of.last_price_fraction_indicator

  index = index + size_of.open_price

  index = index + size_of.open_price_fraction_indicator

  index = index + size_of.high_price

  index = index + size_of.high_price_fraction_indicator

  index = index + size_of.low_price

  index = index + size_of.low_price_fraction_indicator

  index = index + size_of.settlement_price

  index = index + size_of.settlement_price_fraction_indicator_x_1

  index = index + size_of.net_present_value_a

  index = index + size_of.net_present_value_fraction_indicator

  index = index + size_of.historical_coupon_b

  index = index + size_of.historical_coupon_fraction_indicator

  index = index + size_of.price_alignment_interest_c

  index = index + size_of.price_alignment_interest_fraction_indicator

  index = index + size_of.net_change_sign_x_1

  index = index + size_of.net_change

  index = index + size_of.net_change_fraction_indicator_x_1

  index = index + size_of.volume

  index = index + size_of.previous_settlement_price

  index = index + size_of.previous_settlement_price_fraction_indicator

  index = index + size_of.previous_reset_rate

  index = index + size_of.previous_reset_rate_fraction_indicator

  index = index + size_of.open_interest

  index = index + size_of.reason

  return index
end

-- Display: Swap Future Summary Message
display.swap_future_summary_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Swap Future Summary Message
dissect.swap_future_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id X 1: 1 Byte Ascii String
  index, exchange_id_x_1 = dissect.exchange_id_x_1(buffer, index, packet, parent)

  -- Root Symbol A 6: 6 Byte Ascii String
  index, root_symbol_a_6 = dissect.root_symbol_a_6(buffer, index, packet, parent)

  -- Expiry Month: 1 Byte Ascii String
  index, expiry_month = dissect.expiry_month(buffer, index, packet, parent)

  -- Expiry Year: 2 Byte Ascii String
  index, expiry_year = dissect.expiry_year(buffer, index, packet, parent)

  -- Expiry Day: 2 Byte Ascii String
  index, expiry_day = dissect.expiry_day(buffer, index, packet, parent)

  -- Tenor: 2 Byte Ascii String
  index, tenor = dissect.tenor(buffer, index, packet, parent)

  -- Fixed Rate: 5 Byte Ascii String
  index, fixed_rate = dissect.fixed_rate(buffer, index, packet, parent)

  -- Fixed Rate Fraction Indicator: 1 Byte Ascii String
  index, fixed_rate_fraction_indicator = dissect.fixed_rate_fraction_indicator(buffer, index, packet, parent)

  -- Bid Price N 6: 6 Byte Ascii String
  index, bid_price_n_6 = dissect.bid_price_n_6(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: 1 Byte Ascii String
  index, bid_price_fraction_indicator = dissect.bid_price_fraction_indicator(buffer, index, packet, parent)

  -- Bid Size: 5 Byte Ascii String
  index, bid_size = dissect.bid_size(buffer, index, packet, parent)

  -- Ask Price N 6: 6 Byte Ascii String
  index, ask_price_n_6 = dissect.ask_price_n_6(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: 1 Byte Ascii String
  index, ask_price_fraction_indicator = dissect.ask_price_fraction_indicator(buffer, index, packet, parent)

  -- Ask Size: 5 Byte Ascii String
  index, ask_size = dissect.ask_size(buffer, index, packet, parent)

  -- Last Price: 6 Byte Ascii String
  index, last_price = dissect.last_price(buffer, index, packet, parent)

  -- Last Price Fraction Indicator: 1 Byte Ascii String
  index, last_price_fraction_indicator = dissect.last_price_fraction_indicator(buffer, index, packet, parent)

  -- Open Price: 6 Byte Ascii String
  index, open_price = dissect.open_price(buffer, index, packet, parent)

  -- Open Price Fraction Indicator: 1 Byte Ascii String
  index, open_price_fraction_indicator = dissect.open_price_fraction_indicator(buffer, index, packet, parent)

  -- High Price: 6 Byte Ascii String
  index, high_price = dissect.high_price(buffer, index, packet, parent)

  -- High Price Fraction Indicator: 1 Byte Ascii String
  index, high_price_fraction_indicator = dissect.high_price_fraction_indicator(buffer, index, packet, parent)

  -- Low Price: 6 Byte Ascii String
  index, low_price = dissect.low_price(buffer, index, packet, parent)

  -- Low Price Fraction Indicator: 1 Byte Ascii String
  index, low_price_fraction_indicator = dissect.low_price_fraction_indicator(buffer, index, packet, parent)

  -- Settlement Price: 6 Byte Ascii String
  index, settlement_price = dissect.settlement_price(buffer, index, packet, parent)

  -- Settlement Price Fraction Indicator X 1: 1 Byte Ascii String
  index, settlement_price_fraction_indicator_x_1 = dissect.settlement_price_fraction_indicator_x_1(buffer, index, packet, parent)

  -- Net Present Value A: 11 Byte Ascii String
  index, net_present_value_a = dissect.net_present_value_a(buffer, index, packet, parent)

  -- Net Present Value Fraction Indicator: 1 Byte Ascii String
  index, net_present_value_fraction_indicator = dissect.net_present_value_fraction_indicator(buffer, index, packet, parent)

  -- Historical Coupon B: 11 Byte Ascii String
  index, historical_coupon_b = dissect.historical_coupon_b(buffer, index, packet, parent)

  -- Historical Coupon Fraction Indicator: 1 Byte Ascii String
  index, historical_coupon_fraction_indicator = dissect.historical_coupon_fraction_indicator(buffer, index, packet, parent)

  -- Price Alignment Interest C: 11 Byte Ascii String
  index, price_alignment_interest_c = dissect.price_alignment_interest_c(buffer, index, packet, parent)

  -- Price Alignment Interest Fraction Indicator: 1 Byte Ascii String
  index, price_alignment_interest_fraction_indicator = dissect.price_alignment_interest_fraction_indicator(buffer, index, packet, parent)

  -- Net Change Sign X 1: 1 Byte Ascii String
  index, net_change_sign_x_1 = dissect.net_change_sign_x_1(buffer, index, packet, parent)

  -- Net Change: 6 Byte Ascii String
  index, net_change = dissect.net_change(buffer, index, packet, parent)

  -- Net Change Fraction Indicator X 1: 1 Byte Ascii String
  index, net_change_fraction_indicator_x_1 = dissect.net_change_fraction_indicator_x_1(buffer, index, packet, parent)

  -- Volume: 8 Byte Ascii String
  index, volume = dissect.volume(buffer, index, packet, parent)

  -- Previous Settlement Price: 6 Byte Ascii String
  index, previous_settlement_price = dissect.previous_settlement_price(buffer, index, packet, parent)

  -- Previous Settlement Price Fraction Indicator: 1 Byte Ascii String
  index, previous_settlement_price_fraction_indicator = dissect.previous_settlement_price_fraction_indicator(buffer, index, packet, parent)

  -- Previous Reset Rate: 6 Byte Ascii String
  index, previous_reset_rate = dissect.previous_reset_rate(buffer, index, packet, parent)

  -- Previous Reset Rate Fraction Indicator: 1 Byte Ascii String
  index, previous_reset_rate_fraction_indicator = dissect.previous_reset_rate_fraction_indicator(buffer, index, packet, parent)

  -- Open Interest: 7 Byte Ascii String
  index, open_interest = dissect.open_interest(buffer, index, packet, parent)

  -- Reason: 1 Byte Ascii String
  index, reason = dissect.reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Swap Future Summary Message
dissect.swap_future_summary_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.swap_future_summary_message then
    local length = size_of.swap_future_summary_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.swap_future_summary_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.swap_future_summary_message, range, display)
  end

  return dissect.swap_future_summary_message_fields(buffer, offset, packet, parent)
end

-- Size: Leg Symbol
size_of.leg_symbol = 30

-- Display: Leg Symbol
display.leg_symbol = function(value)
  return "Leg Symbol: "..value
end

-- Dissect: Leg Symbol
dissect.leg_symbol = function(buffer, offset, packet, parent)
  local length = size_of.leg_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.leg_symbol(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.leg_symbol, range, value, display)

  return offset + length, value
end

-- Size: Leg Ratio
size_of.leg_ratio = 2

-- Display: Leg Ratio
display.leg_ratio = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
dissect.leg_ratio = function(buffer, offset, packet, parent)
  local length = size_of.leg_ratio
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = display.leg_ratio(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.leg_ratio, range, value, display)

  return offset + length, value
end

-- Size: Leg Ratio Sign
size_of.leg_ratio_sign = 1

-- Display: Leg Ratio Sign
display.leg_ratio_sign = function(value)
  if value == "+" then
    return "Leg Ratio Sign: Buy Of The Underlying (+)"
  end
  if value == "-" then
    return "Leg Ratio Sign: Sell Of The Underlying (-)"
  end

  return "Leg Ratio Sign: Unknown("..value..")"
end

-- Dissect: Leg Ratio Sign
dissect.leg_ratio_sign = function(buffer, offset, packet, parent)
  local length = size_of.leg_ratio_sign
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.leg_ratio_sign(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.leg_ratio_sign, range, value, display)

  return offset + length, value
end

-- Calculate size of: Strategy Summary Strategy Leg
size_of.strategy_summary_strategy_leg = function(buffer, offset)
  local index = 0

  index = index + size_of.leg_ratio_sign

  index = index + size_of.leg_ratio

  index = index + size_of.leg_symbol

  return index
end

-- Display: Strategy Summary Strategy Leg
display.strategy_summary_strategy_leg = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Strategy Summary Strategy Leg
dissect.strategy_summary_strategy_leg_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Ratio Sign: 1 Byte Ascii String Enum with 2 values
  index, leg_ratio_sign = dissect.leg_ratio_sign(buffer, index, packet, parent)

  -- Leg Ratio: 2 Byte Ascii String
  index, leg_ratio = dissect.leg_ratio(buffer, index, packet, parent)

  -- Leg Symbol: 30 Byte Ascii String
  index, leg_symbol = dissect.leg_symbol(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Summary Strategy Leg
dissect.strategy_summary_strategy_leg = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.strategy_summary_strategy_leg then
    local length = size_of.strategy_summary_strategy_leg(buffer, offset)
    local range = buffer(offset, length)
    local display = display.strategy_summary_strategy_leg(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_summary_strategy_leg, range, display)
  end

  return dissect.strategy_summary_strategy_leg_fields(buffer, offset, packet, parent)
end

-- Size: Number Of Legs
size_of.number_of_legs = 2

-- Display: Number Of Legs
display.number_of_legs = function(value)
  return "Number Of Legs: "..value
end

-- Dissect: Number Of Legs
dissect.number_of_legs = function(buffer, offset, packet, parent)
  local length = size_of.number_of_legs
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = display.number_of_legs(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.number_of_legs, range, value, display)

  return offset + length, value
end

-- Size: Low Price Sign
size_of.low_price_sign = 1

-- Display: Low Price Sign
display.low_price_sign = function(value)
  return "Low Price Sign: "..value
end

-- Dissect: Low Price Sign
dissect.low_price_sign = function(buffer, offset, packet, parent)
  local length = size_of.low_price_sign
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.low_price_sign(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.low_price_sign, range, value, display)

  return offset + length, value
end

-- Size: High Price Sign
size_of.high_price_sign = 1

-- Display: High Price Sign
display.high_price_sign = function(value)
  return "High Price Sign: "..value
end

-- Dissect: High Price Sign
dissect.high_price_sign = function(buffer, offset, packet, parent)
  local length = size_of.high_price_sign
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.high_price_sign(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.high_price_sign, range, value, display)

  return offset + length, value
end

-- Size: Open Price Sign
size_of.open_price_sign = 1

-- Display: Open Price Sign
display.open_price_sign = function(value)
  return "Open Price Sign: "..value
end

-- Dissect: Open Price Sign
dissect.open_price_sign = function(buffer, offset, packet, parent)
  local length = size_of.open_price_sign
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.open_price_sign(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.open_price_sign, range, value, display)

  return offset + length, value
end

-- Size: Last Price Sign
size_of.last_price_sign = 1

-- Display: Last Price Sign
display.last_price_sign = function(value)
  return "Last Price Sign: "..value
end

-- Dissect: Last Price Sign
dissect.last_price_sign = function(buffer, offset, packet, parent)
  local length = size_of.last_price_sign
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.last_price_sign(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.last_price_sign, range, value, display)

  return offset + length, value
end

-- Size: Ask Price Sign
size_of.ask_price_sign = 1

-- Display: Ask Price Sign
display.ask_price_sign = function(value)
  return "Ask Price Sign: "..value
end

-- Dissect: Ask Price Sign
dissect.ask_price_sign = function(buffer, offset, packet, parent)
  local length = size_of.ask_price_sign
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.ask_price_sign(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.ask_price_sign, range, value, display)

  return offset + length, value
end

-- Size: Bid Price Sign
size_of.bid_price_sign = 1

-- Display: Bid Price Sign
display.bid_price_sign = function(value)
  return "Bid Price Sign: "..value
end

-- Dissect: Bid Price Sign
dissect.bid_price_sign = function(buffer, offset, packet, parent)
  local length = size_of.bid_price_sign
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.bid_price_sign(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.bid_price_sign, range, value, display)

  return offset + length, value
end

-- Size: Strategy Symbol
size_of.strategy_symbol = 30

-- Display: Strategy Symbol
display.strategy_symbol = function(value)
  return "Strategy Symbol: "..value
end

-- Dissect: Strategy Symbol
dissect.strategy_symbol = function(buffer, offset, packet, parent)
  local length = size_of.strategy_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.strategy_symbol(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_symbol, range, value, display)

  return offset + length, value
end

-- Calculate size of: Strategy Summary Message
size_of.strategy_summary_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id_x_1

  index = index + size_of.strategy_symbol

  index = index + size_of.bid_price_sign

  index = index + size_of.bid_price_n_6

  index = index + size_of.bid_price_fraction_indicator

  index = index + size_of.bid_size

  index = index + size_of.ask_price_sign

  index = index + size_of.ask_price_n_6

  index = index + size_of.ask_price_fraction_indicator

  index = index + size_of.ask_size

  index = index + size_of.last_price_sign

  index = index + size_of.last_price

  index = index + size_of.last_price_fraction_indicator

  index = index + size_of.open_price_sign

  index = index + size_of.open_price

  index = index + size_of.open_price_fraction_indicator

  index = index + size_of.high_price_sign

  index = index + size_of.high_price

  index = index + size_of.high_price_fraction_indicator

  index = index + size_of.low_price_sign

  index = index + size_of.low_price

  index = index + size_of.low_price_fraction_indicator

  index = index + size_of.net_change_sign_x_1

  index = index + size_of.net_change

  index = index + size_of.net_change_fraction_indicator_x_1

  index = index + size_of.volume

  index = index + size_of.reason

  index = index + size_of.number_of_legs

  -- Calculate field size from count
  local strategy_summary_strategy_leg_count = buffer(offset + index - 2, 2):string()
  index = index + strategy_summary_strategy_leg_count * 33

  return index
end

-- Display: Strategy Summary Message
display.strategy_summary_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Strategy Summary Message
dissect.strategy_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id X 1: 1 Byte Ascii String
  index, exchange_id_x_1 = dissect.exchange_id_x_1(buffer, index, packet, parent)

  -- Strategy Symbol: 30 Byte Ascii String
  index, strategy_symbol = dissect.strategy_symbol(buffer, index, packet, parent)

  -- Bid Price Sign: 1 Byte Ascii String
  index, bid_price_sign = dissect.bid_price_sign(buffer, index, packet, parent)

  -- Bid Price N 6: 6 Byte Ascii String
  index, bid_price_n_6 = dissect.bid_price_n_6(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: 1 Byte Ascii String
  index, bid_price_fraction_indicator = dissect.bid_price_fraction_indicator(buffer, index, packet, parent)

  -- Bid Size: 5 Byte Ascii String
  index, bid_size = dissect.bid_size(buffer, index, packet, parent)

  -- Ask Price Sign: 1 Byte Ascii String
  index, ask_price_sign = dissect.ask_price_sign(buffer, index, packet, parent)

  -- Ask Price N 6: 6 Byte Ascii String
  index, ask_price_n_6 = dissect.ask_price_n_6(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: 1 Byte Ascii String
  index, ask_price_fraction_indicator = dissect.ask_price_fraction_indicator(buffer, index, packet, parent)

  -- Ask Size: 5 Byte Ascii String
  index, ask_size = dissect.ask_size(buffer, index, packet, parent)

  -- Last Price Sign: 1 Byte Ascii String
  index, last_price_sign = dissect.last_price_sign(buffer, index, packet, parent)

  -- Last Price: 6 Byte Ascii String
  index, last_price = dissect.last_price(buffer, index, packet, parent)

  -- Last Price Fraction Indicator: 1 Byte Ascii String
  index, last_price_fraction_indicator = dissect.last_price_fraction_indicator(buffer, index, packet, parent)

  -- Open Price Sign: 1 Byte Ascii String
  index, open_price_sign = dissect.open_price_sign(buffer, index, packet, parent)

  -- Open Price: 6 Byte Ascii String
  index, open_price = dissect.open_price(buffer, index, packet, parent)

  -- Open Price Fraction Indicator: 1 Byte Ascii String
  index, open_price_fraction_indicator = dissect.open_price_fraction_indicator(buffer, index, packet, parent)

  -- High Price Sign: 1 Byte Ascii String
  index, high_price_sign = dissect.high_price_sign(buffer, index, packet, parent)

  -- High Price: 6 Byte Ascii String
  index, high_price = dissect.high_price(buffer, index, packet, parent)

  -- High Price Fraction Indicator: 1 Byte Ascii String
  index, high_price_fraction_indicator = dissect.high_price_fraction_indicator(buffer, index, packet, parent)

  -- Low Price Sign: 1 Byte Ascii String
  index, low_price_sign = dissect.low_price_sign(buffer, index, packet, parent)

  -- Low Price: 6 Byte Ascii String
  index, low_price = dissect.low_price(buffer, index, packet, parent)

  -- Low Price Fraction Indicator: 1 Byte Ascii String
  index, low_price_fraction_indicator = dissect.low_price_fraction_indicator(buffer, index, packet, parent)

  -- Net Change Sign X 1: 1 Byte Ascii String
  index, net_change_sign_x_1 = dissect.net_change_sign_x_1(buffer, index, packet, parent)

  -- Net Change: 6 Byte Ascii String
  index, net_change = dissect.net_change(buffer, index, packet, parent)

  -- Net Change Fraction Indicator X 1: 1 Byte Ascii String
  index, net_change_fraction_indicator_x_1 = dissect.net_change_fraction_indicator_x_1(buffer, index, packet, parent)

  -- Volume: 8 Byte Ascii String
  index, volume = dissect.volume(buffer, index, packet, parent)

  -- Reason: 1 Byte Ascii String
  index, reason = dissect.reason(buffer, index, packet, parent)

  -- Number Of Legs: 2 Byte Ascii String
  index, number_of_legs = dissect.number_of_legs(buffer, index, packet, parent)

  -- Strategy Summary Strategy Leg: Struct of 3 fields
  for i = 1, number_of_legs do
    index = dissect.strategy_summary_strategy_leg(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Strategy Summary Message
dissect.strategy_summary_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.strategy_summary_message then
    local length = size_of.strategy_summary_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.strategy_summary_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_summary_message, range, display)
  end

  return dissect.strategy_summary_message_fields(buffer, offset, packet, parent)
end

-- Size: External Price Fraction Indicator
size_of.external_price_fraction_indicator = 1

-- Display: External Price Fraction Indicator
display.external_price_fraction_indicator = function(value)
  return "External Price Fraction Indicator: "..value
end

-- Dissect: External Price Fraction Indicator
dissect.external_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = size_of.external_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.external_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.external_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: External Price At Source
size_of.external_price_at_source = 6

-- Display: External Price At Source
display.external_price_at_source = function(value)
  return "External Price At Source: "..value
end

-- Dissect: External Price At Source
dissect.external_price_at_source = function(buffer, offset, packet, parent)
  local length = size_of.external_price_at_source
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = display.external_price_at_source(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.external_price_at_source, range, value, display)

  return offset + length, value
end

-- Size: Previous Settlement Fraction Indicator
size_of.previous_settlement_fraction_indicator = 1

-- Display: Previous Settlement Fraction Indicator
display.previous_settlement_fraction_indicator = function(value)
  return "Previous Settlement Fraction Indicator: "..value
end

-- Dissect: Previous Settlement Fraction Indicator
dissect.previous_settlement_fraction_indicator = function(buffer, offset, packet, parent)
  local length = size_of.previous_settlement_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.previous_settlement_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.previous_settlement_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Previous Settlement
size_of.previous_settlement = 6

-- Display: Previous Settlement
display.previous_settlement = function(value)
  return "Previous Settlement: "..value
end

-- Dissect: Previous Settlement
dissect.previous_settlement = function(buffer, offset, packet, parent)
  local length = size_of.previous_settlement
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = display.previous_settlement(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.previous_settlement, range, value, display)

  return offset + length, value
end

-- Calculate size of: Futures Summary Message
size_of.futures_summary_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id_a_1

  index = index + size_of.root_symbol_a_6

  index = index + size_of.delivery_month

  index = index + size_of.delivery_year_n_2

  index = index + size_of.delivery_day

  index = index + size_of.bid_price_n_6

  index = index + size_of.bid_price_fraction_indicator

  index = index + size_of.bid_size

  index = index + size_of.ask_price_n_6

  index = index + size_of.ask_price_fraction_indicator

  index = index + size_of.ask_size

  index = index + size_of.last_price

  index = index + size_of.last_price_fraction_indicator

  index = index + size_of.open_price

  index = index + size_of.open_price_fraction_indicator

  index = index + size_of.high_price

  index = index + size_of.high_price_fraction_indicator

  index = index + size_of.low_price

  index = index + size_of.low_price_fraction_indicator

  index = index + size_of.settlement_price

  index = index + size_of.settlement_price_fraction_indicator_x_1

  index = index + size_of.net_change_sign_x_1

  index = index + size_of.net_change

  index = index + size_of.net_change_fraction_indicator_x_1

  index = index + size_of.volume

  index = index + size_of.previous_settlement

  index = index + size_of.previous_settlement_fraction_indicator

  index = index + size_of.open_interest

  index = index + size_of.reason

  index = index + size_of.external_price_at_source

  index = index + size_of.external_price_fraction_indicator

  return index
end

-- Display: Futures Summary Message
display.futures_summary_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Futures Summary Message
dissect.futures_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: 1 Byte Ascii String
  index, exchange_id_a_1 = dissect.exchange_id_a_1(buffer, index, packet, parent)

  -- Root Symbol A 6: 6 Byte Ascii String
  index, root_symbol_a_6 = dissect.root_symbol_a_6(buffer, index, packet, parent)

  -- Delivery Month: 1 Byte Ascii String
  index, delivery_month = dissect.delivery_month(buffer, index, packet, parent)

  -- Delivery Year N 2: 2 Byte Ascii String
  index, delivery_year_n_2 = dissect.delivery_year_n_2(buffer, index, packet, parent)

  -- Delivery Day: 2 Byte Ascii String
  index, delivery_day = dissect.delivery_day(buffer, index, packet, parent)

  -- Bid Price N 6: 6 Byte Ascii String
  index, bid_price_n_6 = dissect.bid_price_n_6(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: 1 Byte Ascii String
  index, bid_price_fraction_indicator = dissect.bid_price_fraction_indicator(buffer, index, packet, parent)

  -- Bid Size: 5 Byte Ascii String
  index, bid_size = dissect.bid_size(buffer, index, packet, parent)

  -- Ask Price N 6: 6 Byte Ascii String
  index, ask_price_n_6 = dissect.ask_price_n_6(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: 1 Byte Ascii String
  index, ask_price_fraction_indicator = dissect.ask_price_fraction_indicator(buffer, index, packet, parent)

  -- Ask Size: 5 Byte Ascii String
  index, ask_size = dissect.ask_size(buffer, index, packet, parent)

  -- Last Price: 6 Byte Ascii String
  index, last_price = dissect.last_price(buffer, index, packet, parent)

  -- Last Price Fraction Indicator: 1 Byte Ascii String
  index, last_price_fraction_indicator = dissect.last_price_fraction_indicator(buffer, index, packet, parent)

  -- Open Price: 6 Byte Ascii String
  index, open_price = dissect.open_price(buffer, index, packet, parent)

  -- Open Price Fraction Indicator: 1 Byte Ascii String
  index, open_price_fraction_indicator = dissect.open_price_fraction_indicator(buffer, index, packet, parent)

  -- High Price: 6 Byte Ascii String
  index, high_price = dissect.high_price(buffer, index, packet, parent)

  -- High Price Fraction Indicator: 1 Byte Ascii String
  index, high_price_fraction_indicator = dissect.high_price_fraction_indicator(buffer, index, packet, parent)

  -- Low Price: 6 Byte Ascii String
  index, low_price = dissect.low_price(buffer, index, packet, parent)

  -- Low Price Fraction Indicator: 1 Byte Ascii String
  index, low_price_fraction_indicator = dissect.low_price_fraction_indicator(buffer, index, packet, parent)

  -- Settlement Price: 6 Byte Ascii String
  index, settlement_price = dissect.settlement_price(buffer, index, packet, parent)

  -- Settlement Price Fraction Indicator X 1: 1 Byte Ascii String
  index, settlement_price_fraction_indicator_x_1 = dissect.settlement_price_fraction_indicator_x_1(buffer, index, packet, parent)

  -- Net Change Sign X 1: 1 Byte Ascii String
  index, net_change_sign_x_1 = dissect.net_change_sign_x_1(buffer, index, packet, parent)

  -- Net Change: 6 Byte Ascii String
  index, net_change = dissect.net_change(buffer, index, packet, parent)

  -- Net Change Fraction Indicator X 1: 1 Byte Ascii String
  index, net_change_fraction_indicator_x_1 = dissect.net_change_fraction_indicator_x_1(buffer, index, packet, parent)

  -- Volume: 8 Byte Ascii String
  index, volume = dissect.volume(buffer, index, packet, parent)

  -- Previous Settlement: 6 Byte Ascii String
  index, previous_settlement = dissect.previous_settlement(buffer, index, packet, parent)

  -- Previous Settlement Fraction Indicator: 1 Byte Ascii String
  index, previous_settlement_fraction_indicator = dissect.previous_settlement_fraction_indicator(buffer, index, packet, parent)

  -- Open Interest: 7 Byte Ascii String
  index, open_interest = dissect.open_interest(buffer, index, packet, parent)

  -- Reason: 1 Byte Ascii String
  index, reason = dissect.reason(buffer, index, packet, parent)

  -- External Price At Source: 6 Byte Ascii String
  index, external_price_at_source = dissect.external_price_at_source(buffer, index, packet, parent)

  -- External Price Fraction Indicator: 1 Byte Ascii String
  index, external_price_fraction_indicator = dissect.external_price_fraction_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Summary Message
dissect.futures_summary_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.futures_summary_message then
    local length = size_of.futures_summary_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.futures_summary_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.futures_summary_message, range, display)
  end

  return dissect.futures_summary_message_fields(buffer, offset, packet, parent)
end

-- Size: Delivery Year N 1
size_of.delivery_year_n_1 = 1

-- Display: Delivery Year N 1
display.delivery_year_n_1 = function(value)
  return "Delivery Year N 1: "..value
end

-- Dissect: Delivery Year N 1
dissect.delivery_year_n_1 = function(buffer, offset, packet, parent)
  local length = size_of.delivery_year_n_1
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = display.delivery_year_n_1(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.delivery_year_n_1, range, value, display)

  return offset + length, value
end

-- Size: Underlying Symbol Root A 3
size_of.underlying_symbol_root_a_3 = 3

-- Display: Underlying Symbol Root A 3
display.underlying_symbol_root_a_3 = function(value)
  return "Underlying Symbol Root A 3: "..value
end

-- Dissect: Underlying Symbol Root A 3
dissect.underlying_symbol_root_a_3 = function(buffer, offset, packet, parent)
  local length = size_of.underlying_symbol_root_a_3
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.underlying_symbol_root_a_3(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.underlying_symbol_root_a_3, range, value, display)

  return offset + length, value
end

-- Size: Opening Price Fraction Indicator
size_of.opening_price_fraction_indicator = 1

-- Display: Opening Price Fraction Indicator
display.opening_price_fraction_indicator = function(value)
  return "Opening Price Fraction Indicator: "..value
end

-- Dissect: Opening Price Fraction Indicator
dissect.opening_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = size_of.opening_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.opening_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.opening_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Opening Price
size_of.opening_price = 6

-- Display: Opening Price
display.opening_price = function(value)
  return "Opening Price: "..value
end

-- Dissect: Opening Price
dissect.opening_price = function(buffer, offset, packet, parent)
  local length = size_of.opening_price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = display.opening_price(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.opening_price, range, value, display)

  return offset + length, value
end

-- Size: Tick
size_of.tick = 1

-- Display: Tick
display.tick = function(value)
  if value == "+" then
    return "Tick: Uptick (+)"
  end
  if value == "-" then
    return "Tick: Downtick (-)"
  end

  return "Tick: Unknown("..value..")"
end

-- Dissect: Tick
dissect.tick = function(buffer, offset, packet, parent)
  local length = size_of.tick
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.tick(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.tick, range, value, display)

  return offset + length, value
end

-- Calculate size of: Future Options Summary Message
size_of.future_options_summary_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id_a_1

  index = index + size_of.root_symbol_a_6

  index = index + size_of.contract_month_code

  index = index + size_of.expiry_year

  index = index + size_of.expiry_day

  index = index + size_of.call_put_code

  index = index + size_of.strike_price_n_7

  index = index + size_of.strike_price_fraction_indicator

  index = index + size_of.bid_price_n_6

  index = index + size_of.bid_price_fraction_indicator

  index = index + size_of.bid_size

  index = index + size_of.ask_price_n_6

  index = index + size_of.ask_price_fraction_indicator

  index = index + size_of.ask_size

  index = index + size_of.last_price

  index = index + size_of.settlement_price_fraction_indicator_x_1

  index = index + size_of.open_interest

  index = index + size_of.tick

  index = index + size_of.volume

  index = index + size_of.net_change_sign_x_1

  index = index + size_of.net_change

  index = index + size_of.net_change_fraction_indicator_x_1

  index = index + size_of.opening_price

  index = index + size_of.opening_price_fraction_indicator

  index = index + size_of.high_price

  index = index + size_of.high_price_fraction_indicator

  index = index + size_of.low_price

  index = index + size_of.low_price_fraction_indicator

  index = index + size_of.filler_x_2

  index = index + size_of.underlying_symbol_root_a_3

  index = index + size_of.delivery_month

  index = index + size_of.delivery_year_n_1

  index = index + size_of.settlement_price

  index = index + size_of.settlement_price_fraction_indicator_x_1

  index = index + size_of.previous_settlement_price

  index = index + size_of.previous_settlement_price_fraction_indicator

  index = index + size_of.reason

  return index
end

-- Display: Future Options Summary Message
display.future_options_summary_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Future Options Summary Message
dissect.future_options_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: 1 Byte Ascii String
  index, exchange_id_a_1 = dissect.exchange_id_a_1(buffer, index, packet, parent)

  -- Root Symbol A 6: 6 Byte Ascii String
  index, root_symbol_a_6 = dissect.root_symbol_a_6(buffer, index, packet, parent)

  -- Contract Month Code: 1 Byte Ascii String
  index, contract_month_code = dissect.contract_month_code(buffer, index, packet, parent)

  -- Expiry Year: 2 Byte Ascii String
  index, expiry_year = dissect.expiry_year(buffer, index, packet, parent)

  -- Expiry Day: 2 Byte Ascii String
  index, expiry_day = dissect.expiry_day(buffer, index, packet, parent)

  -- Call Put Code: 1 Byte Ascii String Enum with 2 values
  index, call_put_code = dissect.call_put_code(buffer, index, packet, parent)

  -- Strike Price N 7: 7 Byte Ascii String
  index, strike_price_n_7 = dissect.strike_price_n_7(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: 1 Byte Ascii String
  index, strike_price_fraction_indicator = dissect.strike_price_fraction_indicator(buffer, index, packet, parent)

  -- Bid Price N 6: 6 Byte Ascii String
  index, bid_price_n_6 = dissect.bid_price_n_6(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: 1 Byte Ascii String
  index, bid_price_fraction_indicator = dissect.bid_price_fraction_indicator(buffer, index, packet, parent)

  -- Bid Size: 5 Byte Ascii String
  index, bid_size = dissect.bid_size(buffer, index, packet, parent)

  -- Ask Price N 6: 6 Byte Ascii String
  index, ask_price_n_6 = dissect.ask_price_n_6(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: 1 Byte Ascii String
  index, ask_price_fraction_indicator = dissect.ask_price_fraction_indicator(buffer, index, packet, parent)

  -- Ask Size: 5 Byte Ascii String
  index, ask_size = dissect.ask_size(buffer, index, packet, parent)

  -- Last Price: 6 Byte Ascii String
  index, last_price = dissect.last_price(buffer, index, packet, parent)

  -- Settlement Price Fraction Indicator X 1: 1 Byte Ascii String
  index, settlement_price_fraction_indicator_x_1 = dissect.settlement_price_fraction_indicator_x_1(buffer, index, packet, parent)

  -- Open Interest: 7 Byte Ascii String
  index, open_interest = dissect.open_interest(buffer, index, packet, parent)

  -- Tick: 1 Byte Ascii String Enum with 2 values
  index, tick = dissect.tick(buffer, index, packet, parent)

  -- Volume: 8 Byte Ascii String
  index, volume = dissect.volume(buffer, index, packet, parent)

  -- Net Change Sign X 1: 1 Byte Ascii String
  index, net_change_sign_x_1 = dissect.net_change_sign_x_1(buffer, index, packet, parent)

  -- Net Change: 6 Byte Ascii String
  index, net_change = dissect.net_change(buffer, index, packet, parent)

  -- Net Change Fraction Indicator X 1: 1 Byte Ascii String
  index, net_change_fraction_indicator_x_1 = dissect.net_change_fraction_indicator_x_1(buffer, index, packet, parent)

  -- Opening Price: 6 Byte Ascii String
  index, opening_price = dissect.opening_price(buffer, index, packet, parent)

  -- Opening Price Fraction Indicator: 1 Byte Ascii String
  index, opening_price_fraction_indicator = dissect.opening_price_fraction_indicator(buffer, index, packet, parent)

  -- High Price: 6 Byte Ascii String
  index, high_price = dissect.high_price(buffer, index, packet, parent)

  -- High Price Fraction Indicator: 1 Byte Ascii String
  index, high_price_fraction_indicator = dissect.high_price_fraction_indicator(buffer, index, packet, parent)

  -- Low Price: 6 Byte Ascii String
  index, low_price = dissect.low_price(buffer, index, packet, parent)

  -- Low Price Fraction Indicator: 1 Byte Ascii String
  index, low_price_fraction_indicator = dissect.low_price_fraction_indicator(buffer, index, packet, parent)

  -- Filler X 2: 2 Byte Ascii String
  index, filler_x_2 = dissect.filler_x_2(buffer, index, packet, parent)

  -- Underlying Symbol Root A 3: 3 Byte Ascii String
  index, underlying_symbol_root_a_3 = dissect.underlying_symbol_root_a_3(buffer, index, packet, parent)

  -- Delivery Month: 1 Byte Ascii String
  index, delivery_month = dissect.delivery_month(buffer, index, packet, parent)

  -- Delivery Year N 1: 1 Byte Ascii String
  index, delivery_year_n_1 = dissect.delivery_year_n_1(buffer, index, packet, parent)

  -- Settlement Price: 6 Byte Ascii String
  index, settlement_price = dissect.settlement_price(buffer, index, packet, parent)

  -- Settlement Price Fraction Indicator X 1: 1 Byte Ascii String
  index, settlement_price_fraction_indicator_x_1 = dissect.settlement_price_fraction_indicator_x_1(buffer, index, packet, parent)

  -- Previous Settlement Price: 6 Byte Ascii String
  index, previous_settlement_price = dissect.previous_settlement_price(buffer, index, packet, parent)

  -- Previous Settlement Price Fraction Indicator: 1 Byte Ascii String
  index, previous_settlement_price_fraction_indicator = dissect.previous_settlement_price_fraction_indicator(buffer, index, packet, parent)

  -- Reason: 1 Byte Ascii String
  index, reason = dissect.reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Options Summary Message
dissect.future_options_summary_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.future_options_summary_message then
    local length = size_of.future_options_summary_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.future_options_summary_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.future_options_summary_message, range, display)
  end

  return dissect.future_options_summary_message_fields(buffer, offset, packet, parent)
end

-- Size: Settlement Price Fraction Indicator N 1
size_of.settlement_price_fraction_indicator_n_1 = 1

-- Display: Settlement Price Fraction Indicator N 1
display.settlement_price_fraction_indicator_n_1 = function(value)
  return "Settlement Price Fraction Indicator N 1: "..value
end

-- Dissect: Settlement Price Fraction Indicator N 1
dissect.settlement_price_fraction_indicator_n_1 = function(buffer, offset, packet, parent)
  local length = size_of.settlement_price_fraction_indicator_n_1
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = display.settlement_price_fraction_indicator_n_1(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.settlement_price_fraction_indicator_n_1, range, value, display)

  return offset + length, value
end

-- Size: Underlying Symbol Root X 10
size_of.underlying_symbol_root_x_10 = 10

-- Display: Underlying Symbol Root X 10
display.underlying_symbol_root_x_10 = function(value)
  return "Underlying Symbol Root X 10: "..value
end

-- Dissect: Underlying Symbol Root X 10
dissect.underlying_symbol_root_x_10 = function(buffer, offset, packet, parent)
  local length = size_of.underlying_symbol_root_x_10
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.underlying_symbol_root_x_10(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.underlying_symbol_root_x_10, range, value, display)

  return offset + length, value
end

-- Size: Option Marker
size_of.option_marker = 2

-- Display: Option Marker
display.option_marker = function(value)
  return "Option Marker: "..value
end

-- Dissect: Option Marker
dissect.option_marker = function(buffer, offset, packet, parent)
  local length = size_of.option_marker
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.option_marker(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.option_marker, range, value, display)

  return offset + length, value
end

-- Calculate size of: Option Summary Message
size_of.option_summary_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id_a_1

  index = index + size_of.root_symbol_x_6

  index = index + size_of.expiry_month

  index = index + size_of.filler_a_1

  index = index + size_of.strike_price_n_7

  index = index + size_of.strike_price_fraction_indicator

  index = index + size_of.expiry_year

  index = index + size_of.expiry_day

  index = index + size_of.bid_price_n_6

  index = index + size_of.bid_price_fraction_indicator

  index = index + size_of.bid_size

  index = index + size_of.ask_price_n_6

  index = index + size_of.ask_price_fraction_indicator

  index = index + size_of.ask_size

  index = index + size_of.last_price

  index = index + size_of.last_price_fraction_indicator

  index = index + size_of.open_interest

  index = index + size_of.tick

  index = index + size_of.volume

  index = index + size_of.net_change_sign_x_1

  index = index + size_of.net_change

  index = index + size_of.net_change_fraction_indicator_x_1

  index = index + size_of.open_price

  index = index + size_of.open_price_fraction_indicator

  index = index + size_of.high_price

  index = index + size_of.high_price_fraction_indicator

  index = index + size_of.low_price

  index = index + size_of.low_price_fraction_indicator

  index = index + size_of.option_marker

  index = index + size_of.underlying_symbol_root_x_10

  index = index + size_of.settlement_price

  index = index + size_of.settlement_price_fraction_indicator_n_1

  index = index + size_of.previous_settlement_price

  index = index + size_of.previous_settlement_price_fraction_indicator

  index = index + size_of.reason

  return index
end

-- Display: Option Summary Message
display.option_summary_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Option Summary Message
dissect.option_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: 1 Byte Ascii String
  index, exchange_id_a_1 = dissect.exchange_id_a_1(buffer, index, packet, parent)

  -- Root Symbol X 6: 6 Byte Ascii String
  index, root_symbol_x_6 = dissect.root_symbol_x_6(buffer, index, packet, parent)

  -- Expiry Month: 1 Byte Ascii String
  index, expiry_month = dissect.expiry_month(buffer, index, packet, parent)

  -- Filler A 1: 1 Byte Ascii String
  index, filler_a_1 = dissect.filler_a_1(buffer, index, packet, parent)

  -- Strike Price N 7: 7 Byte Ascii String
  index, strike_price_n_7 = dissect.strike_price_n_7(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: 1 Byte Ascii String
  index, strike_price_fraction_indicator = dissect.strike_price_fraction_indicator(buffer, index, packet, parent)

  -- Expiry Year: 2 Byte Ascii String
  index, expiry_year = dissect.expiry_year(buffer, index, packet, parent)

  -- Expiry Day: 2 Byte Ascii String
  index, expiry_day = dissect.expiry_day(buffer, index, packet, parent)

  -- Bid Price N 6: 6 Byte Ascii String
  index, bid_price_n_6 = dissect.bid_price_n_6(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: 1 Byte Ascii String
  index, bid_price_fraction_indicator = dissect.bid_price_fraction_indicator(buffer, index, packet, parent)

  -- Bid Size: 5 Byte Ascii String
  index, bid_size = dissect.bid_size(buffer, index, packet, parent)

  -- Ask Price N 6: 6 Byte Ascii String
  index, ask_price_n_6 = dissect.ask_price_n_6(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: 1 Byte Ascii String
  index, ask_price_fraction_indicator = dissect.ask_price_fraction_indicator(buffer, index, packet, parent)

  -- Ask Size: 5 Byte Ascii String
  index, ask_size = dissect.ask_size(buffer, index, packet, parent)

  -- Last Price: 6 Byte Ascii String
  index, last_price = dissect.last_price(buffer, index, packet, parent)

  -- Last Price Fraction Indicator: 1 Byte Ascii String
  index, last_price_fraction_indicator = dissect.last_price_fraction_indicator(buffer, index, packet, parent)

  -- Open Interest: 7 Byte Ascii String
  index, open_interest = dissect.open_interest(buffer, index, packet, parent)

  -- Tick: 1 Byte Ascii String Enum with 2 values
  index, tick = dissect.tick(buffer, index, packet, parent)

  -- Volume: 8 Byte Ascii String
  index, volume = dissect.volume(buffer, index, packet, parent)

  -- Net Change Sign X 1: 1 Byte Ascii String
  index, net_change_sign_x_1 = dissect.net_change_sign_x_1(buffer, index, packet, parent)

  -- Net Change: 6 Byte Ascii String
  index, net_change = dissect.net_change(buffer, index, packet, parent)

  -- Net Change Fraction Indicator X 1: 1 Byte Ascii String
  index, net_change_fraction_indicator_x_1 = dissect.net_change_fraction_indicator_x_1(buffer, index, packet, parent)

  -- Open Price: 6 Byte Ascii String
  index, open_price = dissect.open_price(buffer, index, packet, parent)

  -- Open Price Fraction Indicator: 1 Byte Ascii String
  index, open_price_fraction_indicator = dissect.open_price_fraction_indicator(buffer, index, packet, parent)

  -- High Price: 6 Byte Ascii String
  index, high_price = dissect.high_price(buffer, index, packet, parent)

  -- High Price Fraction Indicator: 1 Byte Ascii String
  index, high_price_fraction_indicator = dissect.high_price_fraction_indicator(buffer, index, packet, parent)

  -- Low Price: 6 Byte Ascii String
  index, low_price = dissect.low_price(buffer, index, packet, parent)

  -- Low Price Fraction Indicator: 1 Byte Ascii String
  index, low_price_fraction_indicator = dissect.low_price_fraction_indicator(buffer, index, packet, parent)

  -- Option Marker: 2 Byte Ascii String
  index, option_marker = dissect.option_marker(buffer, index, packet, parent)

  -- Underlying Symbol Root X 10: 10 Byte Ascii String
  index, underlying_symbol_root_x_10 = dissect.underlying_symbol_root_x_10(buffer, index, packet, parent)

  -- Settlement Price: 6 Byte Ascii String
  index, settlement_price = dissect.settlement_price(buffer, index, packet, parent)

  -- Settlement Price Fraction Indicator N 1: 1 Byte Ascii String
  index, settlement_price_fraction_indicator_n_1 = dissect.settlement_price_fraction_indicator_n_1(buffer, index, packet, parent)

  -- Previous Settlement Price: 6 Byte Ascii String
  index, previous_settlement_price = dissect.previous_settlement_price(buffer, index, packet, parent)

  -- Previous Settlement Price Fraction Indicator: 1 Byte Ascii String
  index, previous_settlement_price_fraction_indicator = dissect.previous_settlement_price_fraction_indicator(buffer, index, packet, parent)

  -- Reason: 1 Byte Ascii String
  index, reason = dissect.reason(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Summary Message
dissect.option_summary_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.option_summary_message then
    local length = size_of.option_summary_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.option_summary_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.option_summary_message, range, display)
  end

  return dissect.option_summary_message_fields(buffer, offset, packet, parent)
end

-- Size: Delivery Type
size_of.delivery_type = 1

-- Display: Delivery Type
display.delivery_type = function(value)
  if value == "C" then
    return "Delivery Type: Cash (C)"
  end
  if value == "P" then
    return "Delivery Type: Physical (P)"
  end

  return "Delivery Type: Unknown("..value..")"
end

-- Dissect: Delivery Type
dissect.delivery_type = function(buffer, offset, packet, parent)
  local length = size_of.delivery_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.delivery_type(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.delivery_type, range, value, display)

  return offset + length, value
end

-- Size: Previous Reset Date
size_of.previous_reset_date = 6

-- Display: Previous Reset Date
display.previous_reset_date = function(value)
  return "Previous Reset Date: "..value
end

-- Dissect: Previous Reset Date
dissect.previous_reset_date = function(buffer, offset, packet, parent)
  local length = size_of.previous_reset_date
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.previous_reset_date(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.previous_reset_date, range, value, display)

  return offset + length, value
end

-- Size: Next Reset Date
size_of.next_reset_date = 6

-- Display: Next Reset Date
display.next_reset_date = function(value)
  return "Next Reset Date: "..value
end

-- Dissect: Next Reset Date
dissect.next_reset_date = function(buffer, offset, packet, parent)
  local length = size_of.next_reset_date
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.next_reset_date(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.next_reset_date, range, value, display)

  return offset + length, value
end

-- Size: First Reset Date
size_of.first_reset_date = 6

-- Display: First Reset Date
display.first_reset_date = function(value)
  return "First Reset Date: "..value
end

-- Dissect: First Reset Date
dissect.first_reset_date = function(buffer, offset, packet, parent)
  local length = size_of.first_reset_date
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.first_reset_date(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.first_reset_date, range, value, display)

  return offset + length, value
end

-- Size: Next Payment Date
size_of.next_payment_date = 6

-- Display: Next Payment Date
display.next_payment_date = function(value)
  return "Next Payment Date: "..value
end

-- Dissect: Next Payment Date
dissect.next_payment_date = function(buffer, offset, packet, parent)
  local length = size_of.next_payment_date
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.next_payment_date(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.next_payment_date, range, value, display)

  return offset + length, value
end

-- Size: First Payment Date
size_of.first_payment_date = 6

-- Display: First Payment Date
display.first_payment_date = function(value)
  return "First Payment Date: "..value
end

-- Dissect: First Payment Date
dissect.first_payment_date = function(buffer, offset, packet, parent)
  local length = size_of.first_payment_date
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.first_payment_date(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.first_payment_date, range, value, display)

  return offset + length, value
end

-- Size: Day Count Convention
size_of.day_count_convention = 1

-- Display: Day Count Convention
display.day_count_convention = function(value)
  if value == "A" then
    return "Day Count Convention: Act 365 (A)"
  end
  if value == "B" then
    return "Day Count Convention: Act 360 (B)"
  end
  if value == "C" then
    return "Day Count Convention: 30360 (C)"
  end
  if value == "S" then
    return "Day Count Convention: Start Of Day (S)"
  end
  if value == "E" then
    return "Day Count Convention: End Of Day (E)"
  end
  if value == "U" then
    return "Day Count Convention: Instrument New Or Update (U)"
  end
  if value == "C" then
    return "Day Count Convention: Trade Cancellation (C)"
  end

  return "Day Count Convention: Unknown("..value..")"
end

-- Dissect: Day Count Convention
dissect.day_count_convention = function(buffer, offset, packet, parent)
  local length = size_of.day_count_convention
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.day_count_convention(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.day_count_convention, range, value, display)

  return offset + length, value
end

-- Size: Notional Principal Amount Faction Indicator
size_of.notional_principal_amount_faction_indicator = 1

-- Display: Notional Principal Amount Faction Indicator
display.notional_principal_amount_faction_indicator = function(value)
  return "Notional Principal Amount Faction Indicator: "..value
end

-- Dissect: Notional Principal Amount Faction Indicator
dissect.notional_principal_amount_faction_indicator = function(buffer, offset, packet, parent)
  local length = size_of.notional_principal_amount_faction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.notional_principal_amount_faction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.notional_principal_amount_faction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Notional Principal Amount
size_of.notional_principal_amount = 8

-- Display: Notional Principal Amount
display.notional_principal_amount = function(value)
  return "Notional Principal Amount: "..value
end

-- Dissect: Notional Principal Amount
dissect.notional_principal_amount = function(buffer, offset, packet, parent)
  local length = size_of.notional_principal_amount
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = display.notional_principal_amount(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.notional_principal_amount, range, value, display)

  return offset + length, value
end

-- Size: Reset Frequency
size_of.reset_frequency = 2

-- Display: Reset Frequency
display.reset_frequency = function(value)
  return "Reset Frequency: "..value
end

-- Dissect: Reset Frequency
dissect.reset_frequency = function(buffer, offset, packet, parent)
  local length = size_of.reset_frequency
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.reset_frequency(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.reset_frequency, range, value, display)

  return offset + length, value
end

-- Size: Payment Frequency
size_of.payment_frequency = 2

-- Display: Payment Frequency
display.payment_frequency = function(value)
  return "Payment Frequency: "..value
end

-- Dissect: Payment Frequency
dissect.payment_frequency = function(buffer, offset, packet, parent)
  local length = size_of.payment_frequency
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.payment_frequency(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.payment_frequency, range, value, display)

  return offset + length, value
end

-- Size: Cash Flow Alignment Date
size_of.cash_flow_alignment_date = 6

-- Display: Cash Flow Alignment Date
display.cash_flow_alignment_date = function(value)
  return "Cash Flow Alignment Date: "..value
end

-- Dissect: Cash Flow Alignment Date
dissect.cash_flow_alignment_date = function(buffer, offset, packet, parent)
  local length = size_of.cash_flow_alignment_date
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.cash_flow_alignment_date(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.cash_flow_alignment_date, range, value, display)

  return offset + length, value
end

-- Size: Initial Effective Date
size_of.initial_effective_date = 6

-- Display: Initial Effective Date
display.initial_effective_date = function(value)
  return "Initial Effective Date: "..value
end

-- Dissect: Initial Effective Date
dissect.initial_effective_date = function(buffer, offset, packet, parent)
  local length = size_of.initial_effective_date
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.initial_effective_date(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.initial_effective_date, range, value, display)

  return offset + length, value
end

-- Size: Effective Date
size_of.effective_date = 6

-- Display: Effective Date
display.effective_date = function(value)
  return "Effective Date: "..value
end

-- Dissect: Effective Date
dissect.effective_date = function(buffer, offset, packet, parent)
  local length = size_of.effective_date
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.effective_date(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.effective_date, range, value, display)

  return offset + length, value
end

-- Size: Currency
size_of.currency = 3

-- Display: Currency
display.currency = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
dissect.currency = function(buffer, offset, packet, parent)
  local length = size_of.currency
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.currency(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.currency, range, value, display)

  return offset + length, value
end

-- Size: Tick Value Fraction Indicator
size_of.tick_value_fraction_indicator = 1

-- Display: Tick Value Fraction Indicator
display.tick_value_fraction_indicator = function(value)
  return "Tick Value Fraction Indicator: "..value
end

-- Dissect: Tick Value Fraction Indicator
dissect.tick_value_fraction_indicator = function(buffer, offset, packet, parent)
  local length = size_of.tick_value_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.tick_value_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.tick_value_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Tick Value
size_of.tick_value = 6

-- Display: Tick Value
display.tick_value = function(value)
  return "Tick Value: "..value
end

-- Dissect: Tick Value
dissect.tick_value = function(buffer, offset, packet, parent)
  local length = size_of.tick_value
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = display.tick_value(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.tick_value, range, value, display)

  return offset + length, value
end

-- Size: Contract Size
size_of.contract_size = 8

-- Display: Contract Size
display.contract_size = function(value)
  return "Contract Size: "..value
end

-- Dissect: Contract Size
dissect.contract_size = function(buffer, offset, packet, parent)
  local length = size_of.contract_size
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = display.contract_size(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.contract_size, range, value, display)

  return offset + length, value
end

-- Size: External Symbol
size_of.external_symbol = 30

-- Display: External Symbol
display.external_symbol = function(value)
  return "External Symbol: "..value
end

-- Dissect: External Symbol
dissect.external_symbol = function(buffer, offset, packet, parent)
  local length = size_of.external_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.external_symbol(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.external_symbol, range, value, display)

  return offset + length, value
end

-- Size: Instrument Id
size_of.instrument_id = 4

-- Display: Instrument Id
display.instrument_id = function(value)
  return "Instrument Id: "..value
end

-- Dissect: Instrument Id
dissect.instrument_id = function(buffer, offset, packet, parent)
  local length = size_of.instrument_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.instrument_id(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.instrument_id, range, value, display)

  return offset + length, value
end

-- Size: Market Flow
size_of.market_flow = 2

-- Display: Market Flow
display.market_flow = function(value)
  return "Market Flow: "..value
end

-- Dissect: Market Flow
dissect.market_flow = function(buffer, offset, packet, parent)
  local length = size_of.market_flow
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.market_flow(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.market_flow, range, value, display)

  return offset + length, value
end

-- Size: Tick Increment Fraction Indicator
size_of.tick_increment_fraction_indicator = 1

-- Display: Tick Increment Fraction Indicator
display.tick_increment_fraction_indicator = function(value)
  return "Tick Increment Fraction Indicator: "..value
end

-- Dissect: Tick Increment Fraction Indicator
dissect.tick_increment_fraction_indicator = function(buffer, offset, packet, parent)
  local length = size_of.tick_increment_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.tick_increment_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.tick_increment_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Tick Increment
size_of.tick_increment = 6

-- Display: Tick Increment
display.tick_increment = function(value)
  return "Tick Increment: "..value
end

-- Dissect: Tick Increment
dissect.tick_increment = function(buffer, offset, packet, parent)
  local length = size_of.tick_increment
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.tick_increment(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.tick_increment, range, value, display)

  return offset + length, value
end

-- Size: Minimum Threshold Price Fraction Indicator
size_of.minimum_threshold_price_fraction_indicator = 1

-- Display: Minimum Threshold Price Fraction Indicator
display.minimum_threshold_price_fraction_indicator = function(value)
  return "Minimum Threshold Price Fraction Indicator: "..value
end

-- Dissect: Minimum Threshold Price Fraction Indicator
dissect.minimum_threshold_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = size_of.minimum_threshold_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.minimum_threshold_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.minimum_threshold_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Minimum Threshold Price X 6
size_of.minimum_threshold_price_x_6 = 6

-- Display: Minimum Threshold Price X 6
display.minimum_threshold_price_x_6 = function(value)
  return "Minimum Threshold Price X 6: "..value
end

-- Dissect: Minimum Threshold Price X 6
dissect.minimum_threshold_price_x_6 = function(buffer, offset, packet, parent)
  local length = size_of.minimum_threshold_price_x_6
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.minimum_threshold_price_x_6(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.minimum_threshold_price_x_6, range, value, display)

  return offset + length, value
end

-- Size: Maximum Threshold Price Fraction Indicator
size_of.maximum_threshold_price_fraction_indicator = 1

-- Display: Maximum Threshold Price Fraction Indicator
display.maximum_threshold_price_fraction_indicator = function(value)
  return "Maximum Threshold Price Fraction Indicator: "..value
end

-- Dissect: Maximum Threshold Price Fraction Indicator
dissect.maximum_threshold_price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = size_of.maximum_threshold_price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.maximum_threshold_price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.maximum_threshold_price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Maximum Threshold Price X 6
size_of.maximum_threshold_price_x_6 = 6

-- Display: Maximum Threshold Price X 6
display.maximum_threshold_price_x_6 = function(value)
  return "Maximum Threshold Price X 6: "..value
end

-- Dissect: Maximum Threshold Price X 6
dissect.maximum_threshold_price_x_6 = function(buffer, offset, packet, parent)
  local length = size_of.maximum_threshold_price_x_6
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.maximum_threshold_price_x_6(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.maximum_threshold_price_x_6, range, value, display)

  return offset + length, value
end

-- Size: Minimum Number Of Contracts Per Order
size_of.minimum_number_of_contracts_per_order = 6

-- Display: Minimum Number Of Contracts Per Order
display.minimum_number_of_contracts_per_order = function(value)
  return "Minimum Number Of Contracts Per Order: "..value
end

-- Dissect: Minimum Number Of Contracts Per Order
dissect.minimum_number_of_contracts_per_order = function(buffer, offset, packet, parent)
  local length = size_of.minimum_number_of_contracts_per_order
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.minimum_number_of_contracts_per_order(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.minimum_number_of_contracts_per_order, range, value, display)

  return offset + length, value
end

-- Size: Maximum Number Of Contracts Per Order
size_of.maximum_number_of_contracts_per_order = 6

-- Display: Maximum Number Of Contracts Per Order
display.maximum_number_of_contracts_per_order = function(value)
  return "Maximum Number Of Contracts Per Order: "..value
end

-- Dissect: Maximum Number Of Contracts Per Order
dissect.maximum_number_of_contracts_per_order = function(buffer, offset, packet, parent)
  local length = size_of.maximum_number_of_contracts_per_order
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.maximum_number_of_contracts_per_order(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.maximum_number_of_contracts_per_order, range, value, display)

  return offset + length, value
end

-- Calculate size of: Swap Future Instrument Keys Message
size_of.swap_future_instrument_keys_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_i_d

  index = index + size_of.root_symbol_a_6

  index = index + size_of.expiry_month

  index = index + size_of.expiry_year

  index = index + size_of.expiry_day

  index = index + size_of.tenor

  index = index + size_of.fixed_rate

  index = index + size_of.fixed_rate_fraction_indicator

  index = index + size_of.maximum_number_of_contracts_per_order

  index = index + size_of.minimum_number_of_contracts_per_order

  index = index + size_of.maximum_threshold_price_x_6

  index = index + size_of.maximum_threshold_price_fraction_indicator

  index = index + size_of.minimum_threshold_price_x_6

  index = index + size_of.minimum_threshold_price_fraction_indicator

  index = index + size_of.tick_increment

  index = index + size_of.tick_increment_fraction_indicator

  index = index + size_of.market_flow

  index = index + size_of.group_instrument

  index = index + size_of.instrument_id

  index = index + size_of.external_symbol

  index = index + size_of.contract_size

  index = index + size_of.tick_value

  index = index + size_of.tick_value_fraction_indicator

  index = index + size_of.currency

  index = index + size_of.effective_date

  index = index + size_of.initial_effective_date

  index = index + size_of.cash_flow_alignment_date

  index = index + size_of.payment_frequency

  index = index + size_of.reset_frequency

  index = index + size_of.notional_principal_amount

  index = index + size_of.notional_principal_amount_faction_indicator

  index = index + size_of.day_count_convention

  index = index + size_of.first_payment_date

  index = index + size_of.next_payment_date

  index = index + size_of.first_reset_date

  index = index + size_of.next_reset_date

  index = index + size_of.previous_reset_date

  index = index + size_of.delivery_type

  return index
end

-- Display: Swap Future Instrument Keys Message
display.swap_future_instrument_keys_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Swap Future Instrument Keys Message
dissect.swap_future_instrument_keys_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange I D: 1 Byte Ascii String
  index, exchange_i_d = dissect.exchange_i_d(buffer, index, packet, parent)

  -- Root Symbol A 6: 6 Byte Ascii String
  index, root_symbol_a_6 = dissect.root_symbol_a_6(buffer, index, packet, parent)

  -- Expiry Month: 1 Byte Ascii String
  index, expiry_month = dissect.expiry_month(buffer, index, packet, parent)

  -- Expiry Year: 2 Byte Ascii String
  index, expiry_year = dissect.expiry_year(buffer, index, packet, parent)

  -- Expiry Day: 2 Byte Ascii String
  index, expiry_day = dissect.expiry_day(buffer, index, packet, parent)

  -- Tenor: 2 Byte Ascii String
  index, tenor = dissect.tenor(buffer, index, packet, parent)

  -- Fixed Rate: 5 Byte Ascii String
  index, fixed_rate = dissect.fixed_rate(buffer, index, packet, parent)

  -- Fixed Rate Fraction Indicator: 1 Byte Ascii String
  index, fixed_rate_fraction_indicator = dissect.fixed_rate_fraction_indicator(buffer, index, packet, parent)

  -- Maximum Number Of Contracts Per Order: 6 Byte Ascii String
  index, maximum_number_of_contracts_per_order = dissect.maximum_number_of_contracts_per_order(buffer, index, packet, parent)

  -- Minimum Number Of Contracts Per Order: 6 Byte Ascii String
  index, minimum_number_of_contracts_per_order = dissect.minimum_number_of_contracts_per_order(buffer, index, packet, parent)

  -- Maximum Threshold Price X 6: 6 Byte Ascii String
  index, maximum_threshold_price_x_6 = dissect.maximum_threshold_price_x_6(buffer, index, packet, parent)

  -- Maximum Threshold Price Fraction Indicator: 1 Byte Ascii String
  index, maximum_threshold_price_fraction_indicator = dissect.maximum_threshold_price_fraction_indicator(buffer, index, packet, parent)

  -- Minimum Threshold Price X 6: 6 Byte Ascii String
  index, minimum_threshold_price_x_6 = dissect.minimum_threshold_price_x_6(buffer, index, packet, parent)

  -- Minimum Threshold Price Fraction Indicator: 1 Byte Ascii String
  index, minimum_threshold_price_fraction_indicator = dissect.minimum_threshold_price_fraction_indicator(buffer, index, packet, parent)

  -- Tick Increment: 6 Byte Ascii String
  index, tick_increment = dissect.tick_increment(buffer, index, packet, parent)

  -- Tick Increment Fraction Indicator: 1 Byte Ascii String
  index, tick_increment_fraction_indicator = dissect.tick_increment_fraction_indicator(buffer, index, packet, parent)

  -- Market Flow: 2 Byte Ascii String
  index, market_flow = dissect.market_flow(buffer, index, packet, parent)

  -- Group Instrument: 2 Byte Ascii String
  index, group_instrument = dissect.group_instrument(buffer, index, packet, parent)

  -- Instrument Id: 4 Byte Ascii String
  index, instrument_id = dissect.instrument_id(buffer, index, packet, parent)

  -- External Symbol: 30 Byte Ascii String
  index, external_symbol = dissect.external_symbol(buffer, index, packet, parent)

  -- Contract Size: 8 Byte Ascii String
  index, contract_size = dissect.contract_size(buffer, index, packet, parent)

  -- Tick Value: 6 Byte Ascii String
  index, tick_value = dissect.tick_value(buffer, index, packet, parent)

  -- Tick Value Fraction Indicator: 1 Byte Ascii String
  index, tick_value_fraction_indicator = dissect.tick_value_fraction_indicator(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = dissect.currency(buffer, index, packet, parent)

  -- Effective Date: 6 Byte Ascii String
  index, effective_date = dissect.effective_date(buffer, index, packet, parent)

  -- Initial Effective Date: 6 Byte Ascii String
  index, initial_effective_date = dissect.initial_effective_date(buffer, index, packet, parent)

  -- Cash Flow Alignment Date: 6 Byte Ascii String
  index, cash_flow_alignment_date = dissect.cash_flow_alignment_date(buffer, index, packet, parent)

  -- Payment Frequency: 2 Byte Ascii String
  index, payment_frequency = dissect.payment_frequency(buffer, index, packet, parent)

  -- Reset Frequency: 2 Byte Ascii String
  index, reset_frequency = dissect.reset_frequency(buffer, index, packet, parent)

  -- Notional Principal Amount: 8 Byte Ascii String
  index, notional_principal_amount = dissect.notional_principal_amount(buffer, index, packet, parent)

  -- Notional Principal Amount Faction Indicator: 1 Byte Ascii String
  index, notional_principal_amount_faction_indicator = dissect.notional_principal_amount_faction_indicator(buffer, index, packet, parent)

  -- Day Count Convention: 1 Byte Ascii String Enum with 7 values
  index, day_count_convention = dissect.day_count_convention(buffer, index, packet, parent)

  -- First Payment Date: 6 Byte Ascii String
  index, first_payment_date = dissect.first_payment_date(buffer, index, packet, parent)

  -- Next Payment Date: 6 Byte Ascii String
  index, next_payment_date = dissect.next_payment_date(buffer, index, packet, parent)

  -- First Reset Date: 6 Byte Ascii String
  index, first_reset_date = dissect.first_reset_date(buffer, index, packet, parent)

  -- Next Reset Date: 6 Byte Ascii String
  index, next_reset_date = dissect.next_reset_date(buffer, index, packet, parent)

  -- Previous Reset Date: 6 Byte Ascii String
  index, previous_reset_date = dissect.previous_reset_date(buffer, index, packet, parent)

  -- Delivery Type: 1 Byte Ascii String Enum with 2 values
  index, delivery_type = dissect.delivery_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Swap Future Instrument Keys Message
dissect.swap_future_instrument_keys_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.swap_future_instrument_keys_message then
    local length = size_of.swap_future_instrument_keys_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.swap_future_instrument_keys_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.swap_future_instrument_keys_message, range, display)
  end

  return dissect.swap_future_instrument_keys_message_fields(buffer, offset, packet, parent)
end

-- Size: Strategy Allow Implied
size_of.strategy_allow_implied = 1

-- Display: Strategy Allow Implied
display.strategy_allow_implied = function(value)
  if value == "Y" then
    return "Strategy Allow Implied: Yes (Y)"
  end
  if value == "N" then
    return "Strategy Allow Implied: No (N)"
  end

  return "Strategy Allow Implied: Unknown("..value..")"
end

-- Dissect: Strategy Allow Implied
dissect.strategy_allow_implied = function(buffer, offset, packet, parent)
  local length = size_of.strategy_allow_implied
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.strategy_allow_implied(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_allow_implied, range, value, display)

  return offset + length, value
end

-- Size: Instrument External Code
size_of.instrument_external_code = 30

-- Display: Instrument External Code
display.instrument_external_code = function(value)
  return "Instrument External Code: "..value
end

-- Dissect: Instrument External Code
dissect.instrument_external_code = function(buffer, offset, packet, parent)
  local length = size_of.instrument_external_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.instrument_external_code(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.instrument_external_code, range, value, display)

  return offset + length, value
end

-- Size: Instrument
size_of.instrument = 4

-- Display: Instrument
display.instrument = function(value)
  return "Instrument: "..value
end

-- Dissect: Instrument
dissect.instrument = function(buffer, offset, packet, parent)
  local length = size_of.instrument
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.instrument(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.instrument, range, value, display)

  return offset + length, value
end

-- Size: Market Flow Indicator
size_of.market_flow_indicator = 2

-- Display: Market Flow Indicator
display.market_flow_indicator = function(value)
  return "Market Flow Indicator: "..value
end

-- Dissect: Market Flow Indicator
dissect.market_flow_indicator = function(buffer, offset, packet, parent)
  local length = size_of.market_flow_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.market_flow_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.market_flow_indicator, range, value, display)

  return offset + length, value
end

-- Calculate size of: Strategy Instrument Keys Message
size_of.strategy_instrument_keys_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_i_d

  index = index + size_of.strategy_symbol

  index = index + size_of.expiry_year

  index = index + size_of.delivery_month

  index = index + size_of.expiry_day

  index = index + size_of.maximum_number_of_contracts_per_order

  index = index + size_of.minimum_number_of_contracts_per_order

  index = index + size_of.maximum_threshold_price_x_6

  index = index + size_of.maximum_threshold_price_fraction_indicator

  index = index + size_of.minimum_threshold_price_x_6

  index = index + size_of.minimum_threshold_price_fraction_indicator

  index = index + size_of.tick_increment

  index = index + size_of.tick_increment_fraction_indicator

  index = index + size_of.market_flow_indicator

  index = index + size_of.group_instrument

  index = index + size_of.instrument

  index = index + size_of.instrument_external_code

  index = index + size_of.strategy_allow_implied

  return index
end

-- Display: Strategy Instrument Keys Message
display.strategy_instrument_keys_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Strategy Instrument Keys Message
dissect.strategy_instrument_keys_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange I D: 1 Byte Ascii String
  index, exchange_i_d = dissect.exchange_i_d(buffer, index, packet, parent)

  -- Strategy Symbol: 30 Byte Ascii String
  index, strategy_symbol = dissect.strategy_symbol(buffer, index, packet, parent)

  -- Expiry Year: 2 Byte Ascii String
  index, expiry_year = dissect.expiry_year(buffer, index, packet, parent)

  -- Delivery Month: 1 Byte Ascii String
  index, delivery_month = dissect.delivery_month(buffer, index, packet, parent)

  -- Expiry Day: 2 Byte Ascii String
  index, expiry_day = dissect.expiry_day(buffer, index, packet, parent)

  -- Maximum Number Of Contracts Per Order: 6 Byte Ascii String
  index, maximum_number_of_contracts_per_order = dissect.maximum_number_of_contracts_per_order(buffer, index, packet, parent)

  -- Minimum Number Of Contracts Per Order: 6 Byte Ascii String
  index, minimum_number_of_contracts_per_order = dissect.minimum_number_of_contracts_per_order(buffer, index, packet, parent)

  -- Maximum Threshold Price X 6: 6 Byte Ascii String
  index, maximum_threshold_price_x_6 = dissect.maximum_threshold_price_x_6(buffer, index, packet, parent)

  -- Maximum Threshold Price Fraction Indicator: 1 Byte Ascii String
  index, maximum_threshold_price_fraction_indicator = dissect.maximum_threshold_price_fraction_indicator(buffer, index, packet, parent)

  -- Minimum Threshold Price X 6: 6 Byte Ascii String
  index, minimum_threshold_price_x_6 = dissect.minimum_threshold_price_x_6(buffer, index, packet, parent)

  -- Minimum Threshold Price Fraction Indicator: 1 Byte Ascii String
  index, minimum_threshold_price_fraction_indicator = dissect.minimum_threshold_price_fraction_indicator(buffer, index, packet, parent)

  -- Tick Increment: 6 Byte Ascii String
  index, tick_increment = dissect.tick_increment(buffer, index, packet, parent)

  -- Tick Increment Fraction Indicator: 1 Byte Ascii String
  index, tick_increment_fraction_indicator = dissect.tick_increment_fraction_indicator(buffer, index, packet, parent)

  -- Market Flow Indicator: 2 Byte Ascii String
  index, market_flow_indicator = dissect.market_flow_indicator(buffer, index, packet, parent)

  -- Group Instrument: 2 Byte Ascii String
  index, group_instrument = dissect.group_instrument(buffer, index, packet, parent)

  -- Instrument: 4 Byte Ascii String
  index, instrument = dissect.instrument(buffer, index, packet, parent)

  -- Instrument External Code: 30 Byte Ascii String
  index, instrument_external_code = dissect.instrument_external_code(buffer, index, packet, parent)

  -- Strategy Allow Implied: 1 Byte Ascii String Enum with 2 values
  index, strategy_allow_implied = dissect.strategy_allow_implied(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Instrument Keys Message
dissect.strategy_instrument_keys_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.strategy_instrument_keys_message then
    local length = size_of.strategy_instrument_keys_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.strategy_instrument_keys_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_instrument_keys_message, range, display)
  end

  return dissect.strategy_instrument_keys_message_fields(buffer, offset, packet, parent)
end

-- Size: Underlying Symbol
size_of.underlying_symbol = 10

-- Display: Underlying Symbol
display.underlying_symbol = function(value)
  return "Underlying Symbol: "..value
end

-- Dissect: Underlying Symbol
dissect.underlying_symbol = function(buffer, offset, packet, parent)
  local length = size_of.underlying_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.underlying_symbol(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.underlying_symbol, range, value, display)

  return offset + length, value
end

-- Size: Minimum Threshold Price N 6
size_of.minimum_threshold_price_n_6 = 6

-- Display: Minimum Threshold Price N 6
display.minimum_threshold_price_n_6 = function(value)
  return "Minimum Threshold Price N 6: "..value
end

-- Dissect: Minimum Threshold Price N 6
dissect.minimum_threshold_price_n_6 = function(buffer, offset, packet, parent)
  local length = size_of.minimum_threshold_price_n_6
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = display.minimum_threshold_price_n_6(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.minimum_threshold_price_n_6, range, value, display)

  return offset + length, value
end

-- Size: Maximum Threshold Price N 6
size_of.maximum_threshold_price_n_6 = 6

-- Display: Maximum Threshold Price N 6
display.maximum_threshold_price_n_6 = function(value)
  return "Maximum Threshold Price N 6: "..value
end

-- Dissect: Maximum Threshold Price N 6
dissect.maximum_threshold_price_n_6 = function(buffer, offset, packet, parent)
  local length = size_of.maximum_threshold_price_n_6
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = display.maximum_threshold_price_n_6(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.maximum_threshold_price_n_6, range, value, display)

  return offset + length, value
end

-- Calculate size of: Futures Instrument Keys Message
size_of.futures_instrument_keys_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id_a_1

  index = index + size_of.root_symbol_a_6

  index = index + size_of.delivery_month

  index = index + size_of.delivery_year_n_2

  index = index + size_of.expiry_day

  index = index + size_of.maximum_number_of_contracts_per_order

  index = index + size_of.minimum_number_of_contracts_per_order

  index = index + size_of.maximum_threshold_price_n_6

  index = index + size_of.maximum_threshold_price_fraction_indicator

  index = index + size_of.minimum_threshold_price_n_6

  index = index + size_of.minimum_threshold_price_fraction_indicator

  index = index + size_of.tick_increment

  index = index + size_of.tick_increment_fraction_indicator

  index = index + size_of.market_flow_indicator

  index = index + size_of.group_instrument

  index = index + size_of.instrument

  index = index + size_of.instrument_external_code

  index = index + size_of.contract_size

  index = index + size_of.tick_value

  index = index + size_of.tick_value_fraction_indicator

  index = index + size_of.currency

  index = index + size_of.underlying_symbol

  index = index + size_of.delivery_type

  index = index + size_of.root_symbol_a_6

  index = index + size_of.delivery_month

  index = index + size_of.delivery_year_n_2

  index = index + size_of.expiry_day

  return index
end

-- Display: Futures Instrument Keys Message
display.futures_instrument_keys_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Futures Instrument Keys Message
dissect.futures_instrument_keys_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: 1 Byte Ascii String
  index, exchange_id_a_1 = dissect.exchange_id_a_1(buffer, index, packet, parent)

  -- Root Symbol A 6: 6 Byte Ascii String
  index, root_symbol_a_6 = dissect.root_symbol_a_6(buffer, index, packet, parent)

  -- Delivery Month: 1 Byte Ascii String
  index, delivery_month = dissect.delivery_month(buffer, index, packet, parent)

  -- Delivery Year N 2: 2 Byte Ascii String
  index, delivery_year_n_2 = dissect.delivery_year_n_2(buffer, index, packet, parent)

  -- Expiry Day: 2 Byte Ascii String
  index, expiry_day = dissect.expiry_day(buffer, index, packet, parent)

  -- Maximum Number Of Contracts Per Order: 6 Byte Ascii String
  index, maximum_number_of_contracts_per_order = dissect.maximum_number_of_contracts_per_order(buffer, index, packet, parent)

  -- Minimum Number Of Contracts Per Order: 6 Byte Ascii String
  index, minimum_number_of_contracts_per_order = dissect.minimum_number_of_contracts_per_order(buffer, index, packet, parent)

  -- Maximum Threshold Price N 6: 6 Byte Ascii String
  index, maximum_threshold_price_n_6 = dissect.maximum_threshold_price_n_6(buffer, index, packet, parent)

  -- Maximum Threshold Price Fraction Indicator: 1 Byte Ascii String
  index, maximum_threshold_price_fraction_indicator = dissect.maximum_threshold_price_fraction_indicator(buffer, index, packet, parent)

  -- Minimum Threshold Price N 6: 6 Byte Ascii String
  index, minimum_threshold_price_n_6 = dissect.minimum_threshold_price_n_6(buffer, index, packet, parent)

  -- Minimum Threshold Price Fraction Indicator: 1 Byte Ascii String
  index, minimum_threshold_price_fraction_indicator = dissect.minimum_threshold_price_fraction_indicator(buffer, index, packet, parent)

  -- Tick Increment: 6 Byte Ascii String
  index, tick_increment = dissect.tick_increment(buffer, index, packet, parent)

  -- Tick Increment Fraction Indicator: 1 Byte Ascii String
  index, tick_increment_fraction_indicator = dissect.tick_increment_fraction_indicator(buffer, index, packet, parent)

  -- Market Flow Indicator: 2 Byte Ascii String
  index, market_flow_indicator = dissect.market_flow_indicator(buffer, index, packet, parent)

  -- Group Instrument: 2 Byte Ascii String
  index, group_instrument = dissect.group_instrument(buffer, index, packet, parent)

  -- Instrument: 4 Byte Ascii String
  index, instrument = dissect.instrument(buffer, index, packet, parent)

  -- Instrument External Code: 30 Byte Ascii String
  index, instrument_external_code = dissect.instrument_external_code(buffer, index, packet, parent)

  -- Contract Size: 8 Byte Ascii String
  index, contract_size = dissect.contract_size(buffer, index, packet, parent)

  -- Tick Value: 6 Byte Ascii String
  index, tick_value = dissect.tick_value(buffer, index, packet, parent)

  -- Tick Value Fraction Indicator: 1 Byte Ascii String
  index, tick_value_fraction_indicator = dissect.tick_value_fraction_indicator(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = dissect.currency(buffer, index, packet, parent)

  -- Underlying Symbol: 10 Byte Ascii String
  index, underlying_symbol = dissect.underlying_symbol(buffer, index, packet, parent)

  -- Delivery Type: 1 Byte Ascii String Enum with 2 values
  index, delivery_type = dissect.delivery_type(buffer, index, packet, parent)

  -- Root Symbol A 6: 6 Byte Ascii String
  index, root_symbol_a_6 = dissect.root_symbol_a_6(buffer, index, packet, parent)

  -- Delivery Month: 1 Byte Ascii String
  index, delivery_month = dissect.delivery_month(buffer, index, packet, parent)

  -- Delivery Year N 2: 2 Byte Ascii String
  index, delivery_year_n_2 = dissect.delivery_year_n_2(buffer, index, packet, parent)

  -- Expiry Day: 2 Byte Ascii String
  index, expiry_day = dissect.expiry_day(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Instrument Keys Message
dissect.futures_instrument_keys_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.futures_instrument_keys_message then
    local length = size_of.futures_instrument_keys_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.futures_instrument_keys_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.futures_instrument_keys_message, range, display)
  end

  return dissect.futures_instrument_keys_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Underlying Instrument Keys Message
size_of.underlying_instrument_keys_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id_a_1

  index = index + size_of.group_instrument

  index = index + size_of.instrument

  index = index + size_of.instrument_external_code

  return index
end

-- Display: Underlying Instrument Keys Message
display.underlying_instrument_keys_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Underlying Instrument Keys Message
dissect.underlying_instrument_keys_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: 1 Byte Ascii String
  index, exchange_id_a_1 = dissect.exchange_id_a_1(buffer, index, packet, parent)

  -- Group Instrument: 2 Byte Ascii String
  index, group_instrument = dissect.group_instrument(buffer, index, packet, parent)

  -- Instrument: 4 Byte Ascii String
  index, instrument = dissect.instrument(buffer, index, packet, parent)

  -- Instrument External Code: 30 Byte Ascii String
  index, instrument_external_code = dissect.instrument_external_code(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Instrument Keys Message
dissect.underlying_instrument_keys_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.underlying_instrument_keys_message then
    local length = size_of.underlying_instrument_keys_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.underlying_instrument_keys_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.underlying_instrument_keys_message, range, display)
  end

  return dissect.underlying_instrument_keys_message_fields(buffer, offset, packet, parent)
end

-- Size: Strike Price Currency
size_of.strike_price_currency = 3

-- Display: Strike Price Currency
display.strike_price_currency = function(value)
  return "Strike Price Currency: "..value
end

-- Dissect: Strike Price Currency
dissect.strike_price_currency = function(buffer, offset, packet, parent)
  local length = size_of.strike_price_currency
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.strike_price_currency(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.strike_price_currency, range, value, display)

  return offset + length, value
end

-- Calculate size of: Future Options Instrument Keys Message
size_of.future_options_instrument_keys_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id_a_1

  index = index + size_of.root_symbol_a_6

  index = index + size_of.contract_month_code

  index = index + size_of.expiry_year

  index = index + size_of.expiry_day

  index = index + size_of.call_put_code

  index = index + size_of.strike_price_n_7

  index = index + size_of.strike_price_fraction_indicator

  index = index + size_of.strike_price_currency

  index = index + size_of.maximum_number_of_contracts_per_order

  index = index + size_of.minimum_number_of_contracts_per_order

  index = index + size_of.maximum_threshold_price_x_6

  index = index + size_of.maximum_threshold_price_fraction_indicator

  index = index + size_of.minimum_threshold_price_x_6

  index = index + size_of.minimum_threshold_price_fraction_indicator

  index = index + size_of.tick_increment

  index = index + size_of.tick_increment_fraction_indicator

  index = index + size_of.market_flow_indicator

  index = index + size_of.group_instrument

  index = index + size_of.instrument

  index = index + size_of.instrument_external_code

  index = index + size_of.contract_size

  index = index + size_of.tick_value

  index = index + size_of.tick_value_fraction_indicator

  index = index + size_of.currency

  index = index + size_of.delivery_type

  return index
end

-- Display: Future Options Instrument Keys Message
display.future_options_instrument_keys_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Future Options Instrument Keys Message
dissect.future_options_instrument_keys_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: 1 Byte Ascii String
  index, exchange_id_a_1 = dissect.exchange_id_a_1(buffer, index, packet, parent)

  -- Root Symbol A 6: 6 Byte Ascii String
  index, root_symbol_a_6 = dissect.root_symbol_a_6(buffer, index, packet, parent)

  -- Contract Month Code: 1 Byte Ascii String
  index, contract_month_code = dissect.contract_month_code(buffer, index, packet, parent)

  -- Expiry Year: 2 Byte Ascii String
  index, expiry_year = dissect.expiry_year(buffer, index, packet, parent)

  -- Expiry Day: 2 Byte Ascii String
  index, expiry_day = dissect.expiry_day(buffer, index, packet, parent)

  -- Call Put Code: 1 Byte Ascii String Enum with 2 values
  index, call_put_code = dissect.call_put_code(buffer, index, packet, parent)

  -- Strike Price N 7: 7 Byte Ascii String
  index, strike_price_n_7 = dissect.strike_price_n_7(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: 1 Byte Ascii String
  index, strike_price_fraction_indicator = dissect.strike_price_fraction_indicator(buffer, index, packet, parent)

  -- Strike Price Currency: 3 Byte Ascii String
  index, strike_price_currency = dissect.strike_price_currency(buffer, index, packet, parent)

  -- Maximum Number Of Contracts Per Order: 6 Byte Ascii String
  index, maximum_number_of_contracts_per_order = dissect.maximum_number_of_contracts_per_order(buffer, index, packet, parent)

  -- Minimum Number Of Contracts Per Order: 6 Byte Ascii String
  index, minimum_number_of_contracts_per_order = dissect.minimum_number_of_contracts_per_order(buffer, index, packet, parent)

  -- Maximum Threshold Price X 6: 6 Byte Ascii String
  index, maximum_threshold_price_x_6 = dissect.maximum_threshold_price_x_6(buffer, index, packet, parent)

  -- Maximum Threshold Price Fraction Indicator: 1 Byte Ascii String
  index, maximum_threshold_price_fraction_indicator = dissect.maximum_threshold_price_fraction_indicator(buffer, index, packet, parent)

  -- Minimum Threshold Price X 6: 6 Byte Ascii String
  index, minimum_threshold_price_x_6 = dissect.minimum_threshold_price_x_6(buffer, index, packet, parent)

  -- Minimum Threshold Price Fraction Indicator: 1 Byte Ascii String
  index, minimum_threshold_price_fraction_indicator = dissect.minimum_threshold_price_fraction_indicator(buffer, index, packet, parent)

  -- Tick Increment: 6 Byte Ascii String
  index, tick_increment = dissect.tick_increment(buffer, index, packet, parent)

  -- Tick Increment Fraction Indicator: 1 Byte Ascii String
  index, tick_increment_fraction_indicator = dissect.tick_increment_fraction_indicator(buffer, index, packet, parent)

  -- Market Flow Indicator: 2 Byte Ascii String
  index, market_flow_indicator = dissect.market_flow_indicator(buffer, index, packet, parent)

  -- Group Instrument: 2 Byte Ascii String
  index, group_instrument = dissect.group_instrument(buffer, index, packet, parent)

  -- Instrument: 4 Byte Ascii String
  index, instrument = dissect.instrument(buffer, index, packet, parent)

  -- Instrument External Code: 30 Byte Ascii String
  index, instrument_external_code = dissect.instrument_external_code(buffer, index, packet, parent)

  -- Contract Size: 8 Byte Ascii String
  index, contract_size = dissect.contract_size(buffer, index, packet, parent)

  -- Tick Value: 6 Byte Ascii String
  index, tick_value = dissect.tick_value(buffer, index, packet, parent)

  -- Tick Value Fraction Indicator: 1 Byte Ascii String
  index, tick_value_fraction_indicator = dissect.tick_value_fraction_indicator(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = dissect.currency(buffer, index, packet, parent)

  -- Delivery Type: 1 Byte Ascii String Enum with 2 values
  index, delivery_type = dissect.delivery_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Options Instrument Keys Message
dissect.future_options_instrument_keys_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.future_options_instrument_keys_message then
    local length = size_of.future_options_instrument_keys_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.future_options_instrument_keys_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.future_options_instrument_keys_message, range, display)
  end

  return dissect.future_options_instrument_keys_message_fields(buffer, offset, packet, parent)
end

-- Size: Option Type
size_of.option_type = 1

-- Display: Option Type
display.option_type = function(value)
  if value == "A" then
    return "Option Type: American (A)"
  end
  if value == "E" then
    return "Option Type: European (E)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
dissect.option_type = function(buffer, offset, packet, parent)
  local length = size_of.option_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.option_type(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.option_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Option Instrument Keys Message
size_of.option_instrument_keys_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id_a_1

  index = index + size_of.root_symbol_x_6

  index = index + size_of.expiry_month

  index = index + size_of.filler_a_1

  index = index + size_of.strike_price_n_7

  index = index + size_of.strike_price_fraction_indicator

  index = index + size_of.expiry_year

  index = index + size_of.expiry_day

  index = index + size_of.strike_price_currency

  index = index + size_of.maximum_number_of_contracts_per_order

  index = index + size_of.minimum_number_of_contracts_per_order

  index = index + size_of.maximum_threshold_price_x_6

  index = index + size_of.maximum_threshold_price_fraction_indicator

  index = index + size_of.minimum_threshold_price_x_6

  index = index + size_of.minimum_threshold_price_fraction_indicator

  index = index + size_of.tick_increment

  index = index + size_of.tick_increment_fraction_indicator

  index = index + size_of.option_type

  index = index + size_of.market_flow_indicator

  index = index + size_of.group_instrument

  index = index + size_of.instrument

  index = index + size_of.instrument_external_code

  index = index + size_of.option_marker

  index = index + size_of.underlying_symbol_root_x_10

  index = index + size_of.contract_size

  index = index + size_of.tick_value

  index = index + size_of.tick_value_fraction_indicator

  index = index + size_of.currency

  index = index + size_of.delivery_type

  return index
end

-- Display: Option Instrument Keys Message
display.option_instrument_keys_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Option Instrument Keys Message
dissect.option_instrument_keys_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: 1 Byte Ascii String
  index, exchange_id_a_1 = dissect.exchange_id_a_1(buffer, index, packet, parent)

  -- Root Symbol X 6: 6 Byte Ascii String
  index, root_symbol_x_6 = dissect.root_symbol_x_6(buffer, index, packet, parent)

  -- Expiry Month: 1 Byte Ascii String
  index, expiry_month = dissect.expiry_month(buffer, index, packet, parent)

  -- Filler A 1: 1 Byte Ascii String
  index, filler_a_1 = dissect.filler_a_1(buffer, index, packet, parent)

  -- Strike Price N 7: 7 Byte Ascii String
  index, strike_price_n_7 = dissect.strike_price_n_7(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: 1 Byte Ascii String
  index, strike_price_fraction_indicator = dissect.strike_price_fraction_indicator(buffer, index, packet, parent)

  -- Expiry Year: 2 Byte Ascii String
  index, expiry_year = dissect.expiry_year(buffer, index, packet, parent)

  -- Expiry Day: 2 Byte Ascii String
  index, expiry_day = dissect.expiry_day(buffer, index, packet, parent)

  -- Strike Price Currency: 3 Byte Ascii String
  index, strike_price_currency = dissect.strike_price_currency(buffer, index, packet, parent)

  -- Maximum Number Of Contracts Per Order: 6 Byte Ascii String
  index, maximum_number_of_contracts_per_order = dissect.maximum_number_of_contracts_per_order(buffer, index, packet, parent)

  -- Minimum Number Of Contracts Per Order: 6 Byte Ascii String
  index, minimum_number_of_contracts_per_order = dissect.minimum_number_of_contracts_per_order(buffer, index, packet, parent)

  -- Maximum Threshold Price X 6: 6 Byte Ascii String
  index, maximum_threshold_price_x_6 = dissect.maximum_threshold_price_x_6(buffer, index, packet, parent)

  -- Maximum Threshold Price Fraction Indicator: 1 Byte Ascii String
  index, maximum_threshold_price_fraction_indicator = dissect.maximum_threshold_price_fraction_indicator(buffer, index, packet, parent)

  -- Minimum Threshold Price X 6: 6 Byte Ascii String
  index, minimum_threshold_price_x_6 = dissect.minimum_threshold_price_x_6(buffer, index, packet, parent)

  -- Minimum Threshold Price Fraction Indicator: 1 Byte Ascii String
  index, minimum_threshold_price_fraction_indicator = dissect.minimum_threshold_price_fraction_indicator(buffer, index, packet, parent)

  -- Tick Increment: 6 Byte Ascii String
  index, tick_increment = dissect.tick_increment(buffer, index, packet, parent)

  -- Tick Increment Fraction Indicator: 1 Byte Ascii String
  index, tick_increment_fraction_indicator = dissect.tick_increment_fraction_indicator(buffer, index, packet, parent)

  -- Option Type: 1 Byte Ascii String Enum with 2 values
  index, option_type = dissect.option_type(buffer, index, packet, parent)

  -- Market Flow Indicator: 2 Byte Ascii String
  index, market_flow_indicator = dissect.market_flow_indicator(buffer, index, packet, parent)

  -- Group Instrument: 2 Byte Ascii String
  index, group_instrument = dissect.group_instrument(buffer, index, packet, parent)

  -- Instrument: 4 Byte Ascii String
  index, instrument = dissect.instrument(buffer, index, packet, parent)

  -- Instrument External Code: 30 Byte Ascii String
  index, instrument_external_code = dissect.instrument_external_code(buffer, index, packet, parent)

  -- Option Marker: 2 Byte Ascii String
  index, option_marker = dissect.option_marker(buffer, index, packet, parent)

  -- Underlying Symbol Root X 10: 10 Byte Ascii String
  index, underlying_symbol_root_x_10 = dissect.underlying_symbol_root_x_10(buffer, index, packet, parent)

  -- Contract Size: 8 Byte Ascii String
  index, contract_size = dissect.contract_size(buffer, index, packet, parent)

  -- Tick Value: 6 Byte Ascii String
  index, tick_value = dissect.tick_value(buffer, index, packet, parent)

  -- Tick Value Fraction Indicator: 1 Byte Ascii String
  index, tick_value_fraction_indicator = dissect.tick_value_fraction_indicator(buffer, index, packet, parent)

  -- Currency: 3 Byte Ascii String
  index, currency = dissect.currency(buffer, index, packet, parent)

  -- Delivery Type: 1 Byte Ascii String Enum with 2 values
  index, delivery_type = dissect.delivery_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Instrument Keys Message
dissect.option_instrument_keys_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.option_instrument_keys_message then
    local length = size_of.option_instrument_keys_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.option_instrument_keys_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.option_instrument_keys_message, range, display)
  end

  return dissect.option_instrument_keys_message_fields(buffer, offset, packet, parent)
end

-- Size: Market Price Indicator
size_of.market_price_indicator = 1

-- Display: Market Price Indicator
display.market_price_indicator = function(value)
  return "Market Price Indicator: "..value
end

-- Dissect: Market Price Indicator
dissect.market_price_indicator = function(buffer, offset, packet, parent)
  local length = size_of.market_price_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.market_price_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.market_price_indicator, range, value, display)

  return offset + length, value
end

-- Calculate size of: Swap Future Trade Cancellation Message
size_of.swap_future_trade_cancellation_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id_a_1

  index = index + size_of.root_symbol_x_6

  index = index + size_of.expiry_month

  index = index + size_of.expiry_year

  index = index + size_of.expiry_day

  index = index + size_of.tenor

  index = index + size_of.fixed_rate

  index = index + size_of.fixed_rate_fraction_indicator

  index = index + size_of.volume

  index = index + size_of.trade_price

  index = index + size_of.trade_price_fraction_indicator

  index = index + size_of.timestamp

  index = index + size_of.market_price_indicator

  index = index + size_of.trade_number

  return index
end

-- Display: Swap Future Trade Cancellation Message
display.swap_future_trade_cancellation_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Swap Future Trade Cancellation Message
dissect.swap_future_trade_cancellation_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: 1 Byte Ascii String
  index, exchange_id_a_1 = dissect.exchange_id_a_1(buffer, index, packet, parent)

  -- Root Symbol X 6: 6 Byte Ascii String
  index, root_symbol_x_6 = dissect.root_symbol_x_6(buffer, index, packet, parent)

  -- Expiry Month: 1 Byte Ascii String
  index, expiry_month = dissect.expiry_month(buffer, index, packet, parent)

  -- Expiry Year: 2 Byte Ascii String
  index, expiry_year = dissect.expiry_year(buffer, index, packet, parent)

  -- Expiry Day: 2 Byte Ascii String
  index, expiry_day = dissect.expiry_day(buffer, index, packet, parent)

  -- Tenor: 2 Byte Ascii String
  index, tenor = dissect.tenor(buffer, index, packet, parent)

  -- Fixed Rate: 5 Byte Ascii String
  index, fixed_rate = dissect.fixed_rate(buffer, index, packet, parent)

  -- Fixed Rate Fraction Indicator: 1 Byte Ascii String
  index, fixed_rate_fraction_indicator = dissect.fixed_rate_fraction_indicator(buffer, index, packet, parent)

  -- Volume: 8 Byte Ascii String
  index, volume = dissect.volume(buffer, index, packet, parent)

  -- Trade Price: 6 Byte Ascii String
  index, trade_price = dissect.trade_price(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: 1 Byte Ascii String
  index, trade_price_fraction_indicator = dissect.trade_price_fraction_indicator(buffer, index, packet, parent)

  -- Timestamp: 9 Byte Ascii String
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Market Price Indicator: 1 Byte Ascii String
  index, market_price_indicator = dissect.market_price_indicator(buffer, index, packet, parent)

  -- Trade Number: 8 Byte Ascii String
  index, trade_number = dissect.trade_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Swap Future Trade Cancellation Message
dissect.swap_future_trade_cancellation_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.swap_future_trade_cancellation_message then
    local length = size_of.swap_future_trade_cancellation_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.swap_future_trade_cancellation_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.swap_future_trade_cancellation_message, range, display)
  end

  return dissect.swap_future_trade_cancellation_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Strategy Trade Cancellation Message
size_of.strategy_trade_cancellation_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id_a_1

  index = index + size_of.symbol

  index = index + size_of.volume

  index = index + size_of.trade_price_sign

  index = index + size_of.trade_price

  index = index + size_of.trade_price_fraction_indicator

  index = index + size_of.filler_n_6

  index = index + size_of.timestamp

  index = index + size_of.filler_x_1

  index = index + size_of.trade_number

  return index
end

-- Display: Strategy Trade Cancellation Message
display.strategy_trade_cancellation_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Strategy Trade Cancellation Message
dissect.strategy_trade_cancellation_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: 1 Byte Ascii String
  index, exchange_id_a_1 = dissect.exchange_id_a_1(buffer, index, packet, parent)

  -- Symbol: 30 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Volume: 8 Byte Ascii String
  index, volume = dissect.volume(buffer, index, packet, parent)

  -- Trade Price Sign: 1 Byte Ascii String
  index, trade_price_sign = dissect.trade_price_sign(buffer, index, packet, parent)

  -- Trade Price: 6 Byte Ascii String
  index, trade_price = dissect.trade_price(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: 1 Byte Ascii String
  index, trade_price_fraction_indicator = dissect.trade_price_fraction_indicator(buffer, index, packet, parent)

  -- Filler N 6: 6 Byte Ascii String
  index, filler_n_6 = dissect.filler_n_6(buffer, index, packet, parent)

  -- Timestamp: 9 Byte Ascii String
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Filler X 1: 1 Byte Ascii String
  index, filler_x_1 = dissect.filler_x_1(buffer, index, packet, parent)

  -- Trade Number: 8 Byte Ascii String
  index, trade_number = dissect.trade_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Trade Cancellation Message
dissect.strategy_trade_cancellation_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.strategy_trade_cancellation_message then
    local length = size_of.strategy_trade_cancellation_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.strategy_trade_cancellation_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_trade_cancellation_message, range, display)
  end

  return dissect.strategy_trade_cancellation_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Futures Trade Cancellation Message
size_of.futures_trade_cancellation_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id_a_1

  index = index + size_of.root_symbol_a_6

  index = index + size_of.delivery_month

  index = index + size_of.delivery_year_n_2

  index = index + size_of.delivery_day

  index = index + size_of.volume

  index = index + size_of.trade_price

  index = index + size_of.trade_price_fraction_indicator

  index = index + size_of.filler_n_6

  index = index + size_of.timestamp

  index = index + size_of.price_indicator_marker_x_1

  index = index + size_of.trade_number

  return index
end

-- Display: Futures Trade Cancellation Message
display.futures_trade_cancellation_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Futures Trade Cancellation Message
dissect.futures_trade_cancellation_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: 1 Byte Ascii String
  index, exchange_id_a_1 = dissect.exchange_id_a_1(buffer, index, packet, parent)

  -- Root Symbol A 6: 6 Byte Ascii String
  index, root_symbol_a_6 = dissect.root_symbol_a_6(buffer, index, packet, parent)

  -- Delivery Month: 1 Byte Ascii String
  index, delivery_month = dissect.delivery_month(buffer, index, packet, parent)

  -- Delivery Year N 2: 2 Byte Ascii String
  index, delivery_year_n_2 = dissect.delivery_year_n_2(buffer, index, packet, parent)

  -- Delivery Day: 2 Byte Ascii String
  index, delivery_day = dissect.delivery_day(buffer, index, packet, parent)

  -- Volume: 8 Byte Ascii String
  index, volume = dissect.volume(buffer, index, packet, parent)

  -- Trade Price: 6 Byte Ascii String
  index, trade_price = dissect.trade_price(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: 1 Byte Ascii String
  index, trade_price_fraction_indicator = dissect.trade_price_fraction_indicator(buffer, index, packet, parent)

  -- Filler N 6: 6 Byte Ascii String
  index, filler_n_6 = dissect.filler_n_6(buffer, index, packet, parent)

  -- Timestamp: 9 Byte Ascii String
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Price Indicator Marker X 1: 1 Byte Ascii String
  index, price_indicator_marker_x_1 = dissect.price_indicator_marker_x_1(buffer, index, packet, parent)

  -- Trade Number: 8 Byte Ascii String
  index, trade_number = dissect.trade_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Trade Cancellation Message
dissect.futures_trade_cancellation_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.futures_trade_cancellation_message then
    local length = size_of.futures_trade_cancellation_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.futures_trade_cancellation_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.futures_trade_cancellation_message, range, display)
  end

  return dissect.futures_trade_cancellation_message_fields(buffer, offset, packet, parent)
end

-- Size: Filler X 6
size_of.filler_x_6 = 6

-- Display: Filler X 6
display.filler_x_6 = function(value)
  return "Filler X 6: "..value
end

-- Dissect: Filler X 6
dissect.filler_x_6 = function(buffer, offset, packet, parent)
  local length = size_of.filler_x_6
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.filler_x_6(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.filler_x_6, range, value, display)

  return offset + length, value
end

-- Size: Price Fraction Indicator
size_of.price_fraction_indicator = 1

-- Display: Price Fraction Indicator
display.price_fraction_indicator = function(value)
  return "Price Fraction Indicator: "..value
end

-- Dissect: Price Fraction Indicator
dissect.price_fraction_indicator = function(buffer, offset, packet, parent)
  local length = size_of.price_fraction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.price_fraction_indicator(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.price_fraction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Price
size_of.price = 6

-- Display: Price
display.price = function(value)
  return "Price: "..value
end

-- Dissect: Price
dissect.price = function(buffer, offset, packet, parent)
  local length = size_of.price
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = display.price(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.price, range, value, display)

  return offset + length, value
end

-- Calculate size of: Future Options Trade Cancellation Message
size_of.future_options_trade_cancellation_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id_a_1

  index = index + size_of.root_symbol_a_6

  index = index + size_of.contract_month_code

  index = index + size_of.expiry_year

  index = index + size_of.expiry_day

  index = index + size_of.call_put_code

  index = index + size_of.strike_price_n_7

  index = index + size_of.strike_price_fraction_indicator

  index = index + size_of.volume

  index = index + size_of.price

  index = index + size_of.price_fraction_indicator

  index = index + size_of.price_indicator_marker_a_1

  index = index + size_of.filler_x_6

  index = index + size_of.timestamp

  index = index + size_of.open_interest

  index = index + size_of.filler_x_2

  index = index + size_of.trade_number

  return index
end

-- Display: Future Options Trade Cancellation Message
display.future_options_trade_cancellation_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Future Options Trade Cancellation Message
dissect.future_options_trade_cancellation_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: 1 Byte Ascii String
  index, exchange_id_a_1 = dissect.exchange_id_a_1(buffer, index, packet, parent)

  -- Root Symbol A 6: 6 Byte Ascii String
  index, root_symbol_a_6 = dissect.root_symbol_a_6(buffer, index, packet, parent)

  -- Contract Month Code: 1 Byte Ascii String
  index, contract_month_code = dissect.contract_month_code(buffer, index, packet, parent)

  -- Expiry Year: 2 Byte Ascii String
  index, expiry_year = dissect.expiry_year(buffer, index, packet, parent)

  -- Expiry Day: 2 Byte Ascii String
  index, expiry_day = dissect.expiry_day(buffer, index, packet, parent)

  -- Call Put Code: 1 Byte Ascii String Enum with 2 values
  index, call_put_code = dissect.call_put_code(buffer, index, packet, parent)

  -- Strike Price N 7: 7 Byte Ascii String
  index, strike_price_n_7 = dissect.strike_price_n_7(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: 1 Byte Ascii String
  index, strike_price_fraction_indicator = dissect.strike_price_fraction_indicator(buffer, index, packet, parent)

  -- Volume: 8 Byte Ascii String
  index, volume = dissect.volume(buffer, index, packet, parent)

  -- Price: 6 Byte Ascii String
  index, price = dissect.price(buffer, index, packet, parent)

  -- Price Fraction Indicator: 1 Byte Ascii String
  index, price_fraction_indicator = dissect.price_fraction_indicator(buffer, index, packet, parent)

  -- Price Indicator Marker A 1: 1 Byte Ascii String
  index, price_indicator_marker_a_1 = dissect.price_indicator_marker_a_1(buffer, index, packet, parent)

  -- Filler X 6: 6 Byte Ascii String
  index, filler_x_6 = dissect.filler_x_6(buffer, index, packet, parent)

  -- Timestamp: 9 Byte Ascii String
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Open Interest: 7 Byte Ascii String
  index, open_interest = dissect.open_interest(buffer, index, packet, parent)

  -- Filler X 2: 2 Byte Ascii String
  index, filler_x_2 = dissect.filler_x_2(buffer, index, packet, parent)

  -- Trade Number: 8 Byte Ascii String
  index, trade_number = dissect.trade_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Options Trade Cancellation Message
dissect.future_options_trade_cancellation_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.future_options_trade_cancellation_message then
    local length = size_of.future_options_trade_cancellation_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.future_options_trade_cancellation_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.future_options_trade_cancellation_message, range, display)
  end

  return dissect.future_options_trade_cancellation_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Option Trade Cancellation Message
size_of.option_trade_cancellation_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id_a_1

  index = index + size_of.root_symbol_x_6

  index = index + size_of.expiry_month

  index = index + size_of.filler_a_1

  index = index + size_of.strike_price_n_7

  index = index + size_of.strike_price_fraction_indicator

  index = index + size_of.expiry_year

  index = index + size_of.expiry_day

  index = index + size_of.volume

  index = index + size_of.trade_price

  index = index + size_of.trade_price_fraction_indicator

  index = index + size_of.filler_n_6

  index = index + size_of.timestamp

  index = index + size_of.open_interest

  index = index + size_of.filler_x_1

  index = index + size_of.price_indicator_marker_a_1

  index = index + size_of.trade_number

  return index
end

-- Display: Option Trade Cancellation Message
display.option_trade_cancellation_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Option Trade Cancellation Message
dissect.option_trade_cancellation_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: 1 Byte Ascii String
  index, exchange_id_a_1 = dissect.exchange_id_a_1(buffer, index, packet, parent)

  -- Root Symbol X 6: 6 Byte Ascii String
  index, root_symbol_x_6 = dissect.root_symbol_x_6(buffer, index, packet, parent)

  -- Expiry Month: 1 Byte Ascii String
  index, expiry_month = dissect.expiry_month(buffer, index, packet, parent)

  -- Filler A 1: 1 Byte Ascii String
  index, filler_a_1 = dissect.filler_a_1(buffer, index, packet, parent)

  -- Strike Price N 7: 7 Byte Ascii String
  index, strike_price_n_7 = dissect.strike_price_n_7(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: 1 Byte Ascii String
  index, strike_price_fraction_indicator = dissect.strike_price_fraction_indicator(buffer, index, packet, parent)

  -- Expiry Year: 2 Byte Ascii String
  index, expiry_year = dissect.expiry_year(buffer, index, packet, parent)

  -- Expiry Day: 2 Byte Ascii String
  index, expiry_day = dissect.expiry_day(buffer, index, packet, parent)

  -- Volume: 8 Byte Ascii String
  index, volume = dissect.volume(buffer, index, packet, parent)

  -- Trade Price: 6 Byte Ascii String
  index, trade_price = dissect.trade_price(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: 1 Byte Ascii String
  index, trade_price_fraction_indicator = dissect.trade_price_fraction_indicator(buffer, index, packet, parent)

  -- Filler N 6: 6 Byte Ascii String
  index, filler_n_6 = dissect.filler_n_6(buffer, index, packet, parent)

  -- Timestamp: 9 Byte Ascii String
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Open Interest: 7 Byte Ascii String
  index, open_interest = dissect.open_interest(buffer, index, packet, parent)

  -- Filler X 1: 1 Byte Ascii String
  index, filler_x_1 = dissect.filler_x_1(buffer, index, packet, parent)

  -- Price Indicator Marker A 1: 1 Byte Ascii String
  index, price_indicator_marker_a_1 = dissect.price_indicator_marker_a_1(buffer, index, packet, parent)

  -- Trade Number: 8 Byte Ascii String
  index, trade_number = dissect.trade_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Trade Cancellation Message
dissect.option_trade_cancellation_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.option_trade_cancellation_message then
    local length = size_of.option_trade_cancellation_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.option_trade_cancellation_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.option_trade_cancellation_message, range, display)
  end

  return dissect.option_trade_cancellation_message_fields(buffer, offset, packet, parent)
end

-- Size: Number Of Ask Orders
size_of.number_of_ask_orders = 2

-- Display: Number Of Ask Orders
display.number_of_ask_orders = function(value)
  return "Number Of Ask Orders: "..value
end

-- Dissect: Number Of Ask Orders
dissect.number_of_ask_orders = function(buffer, offset, packet, parent)
  local length = size_of.number_of_ask_orders
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.number_of_ask_orders(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.number_of_ask_orders, range, value, display)

  return offset + length, value
end

-- Size: Ask Price X 6
size_of.ask_price_x_6 = 6

-- Display: Ask Price X 6
display.ask_price_x_6 = function(value)
  return "Ask Price X 6: "..value
end

-- Dissect: Ask Price X 6
dissect.ask_price_x_6 = function(buffer, offset, packet, parent)
  local length = size_of.ask_price_x_6
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.ask_price_x_6(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.ask_price_x_6, range, value, display)

  return offset + length, value
end

-- Size: Number Of Bid Orders
size_of.number_of_bid_orders = 2

-- Display: Number Of Bid Orders
display.number_of_bid_orders = function(value)
  return "Number Of Bid Orders: "..value
end

-- Dissect: Number Of Bid Orders
dissect.number_of_bid_orders = function(buffer, offset, packet, parent)
  local length = size_of.number_of_bid_orders
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.number_of_bid_orders(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.number_of_bid_orders, range, value, display)

  return offset + length, value
end

-- Size: Bid Price X 6
size_of.bid_price_x_6 = 6

-- Display: Bid Price X 6
display.bid_price_x_6 = function(value)
  return "Bid Price X 6: "..value
end

-- Dissect: Bid Price X 6
dissect.bid_price_x_6 = function(buffer, offset, packet, parent)
  local length = size_of.bid_price_x_6
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.bid_price_x_6(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.bid_price_x_6, range, value, display)

  return offset + length, value
end

-- Size: Level
size_of.level = 1

-- Display: Level
display.level = function(value)
  return "Level: "..value
end

-- Dissect: Level
dissect.level = function(buffer, offset, packet, parent)
  local length = size_of.level
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.level(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.level, range, value, display)

  return offset + length, value
end

-- Calculate size of: Swap Future Market Depth Trading Instrument
size_of.swap_future_market_depth_trading_instrument = function(buffer, offset)
  local index = 0

  index = index + size_of.level

  index = index + size_of.bid_price_x_6

  index = index + size_of.bid_price_fraction_indicator

  index = index + size_of.bid_size

  index = index + size_of.number_of_bid_orders

  index = index + size_of.ask_price_x_6

  index = index + size_of.ask_price_fraction_indicator

  index = index + size_of.ask_size

  index = index + size_of.number_of_ask_orders

  return index
end

-- Display: Swap Future Market Depth Trading Instrument
display.swap_future_market_depth_trading_instrument = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Swap Future Market Depth Trading Instrument
dissect.swap_future_market_depth_trading_instrument_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Level: 1 Byte Ascii String
  index, level = dissect.level(buffer, index, packet, parent)

  -- Bid Price X 6: 6 Byte Ascii String
  index, bid_price_x_6 = dissect.bid_price_x_6(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: 1 Byte Ascii String
  index, bid_price_fraction_indicator = dissect.bid_price_fraction_indicator(buffer, index, packet, parent)

  -- Bid Size: 5 Byte Ascii String
  index, bid_size = dissect.bid_size(buffer, index, packet, parent)

  -- Number Of Bid Orders: 2 Byte Ascii String
  index, number_of_bid_orders = dissect.number_of_bid_orders(buffer, index, packet, parent)

  -- Ask Price X 6: 6 Byte Ascii String
  index, ask_price_x_6 = dissect.ask_price_x_6(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: 1 Byte Ascii String
  index, ask_price_fraction_indicator = dissect.ask_price_fraction_indicator(buffer, index, packet, parent)

  -- Ask Size: 5 Byte Ascii String
  index, ask_size = dissect.ask_size(buffer, index, packet, parent)

  -- Number Of Ask Orders: 2 Byte Ascii String
  index, number_of_ask_orders = dissect.number_of_ask_orders(buffer, index, packet, parent)

  return index
end

-- Dissect: Swap Future Market Depth Trading Instrument
dissect.swap_future_market_depth_trading_instrument = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.swap_future_market_depth_trading_instrument then
    local length = size_of.swap_future_market_depth_trading_instrument(buffer, offset)
    local range = buffer(offset, length)
    local display = display.swap_future_market_depth_trading_instrument(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.swap_future_market_depth_trading_instrument, range, display)
  end

  return dissect.swap_future_market_depth_trading_instrument_fields(buffer, offset, packet, parent)
end

-- Size: Number Of Level
size_of.number_of_level = 1

-- Display: Number Of Level
display.number_of_level = function(value)
  return "Number Of Level: "..value
end

-- Dissect: Number Of Level
dissect.number_of_level = function(buffer, offset, packet, parent)
  local length = size_of.number_of_level
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = display.number_of_level(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.number_of_level, range, value, display)

  return offset + length, value
end

-- Size: Instrument Status Marker A 1
size_of.instrument_status_marker_a_1 = 1

-- Display: Instrument Status Marker A 1
display.instrument_status_marker_a_1 = function(value)
  return "Instrument Status Marker A 1: "..value
end

-- Dissect: Instrument Status Marker A 1
dissect.instrument_status_marker_a_1 = function(buffer, offset, packet, parent)
  local length = size_of.instrument_status_marker_a_1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.instrument_status_marker_a_1(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.instrument_status_marker_a_1, range, value, display)

  return offset + length, value
end

-- Calculate size of: Swap Future Market Depth Message
size_of.swap_future_market_depth_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id_a_1

  index = index + size_of.root_symbol_x_6

  index = index + size_of.expiry_month

  index = index + size_of.expiry_year

  index = index + size_of.expiry_day

  index = index + size_of.tenor

  index = index + size_of.fixed_rate

  index = index + size_of.fixed_rate_fraction_indicator

  index = index + size_of.instrument_status_marker_a_1

  index = index + size_of.number_of_level

  -- Calculate field size from count
  local swap_future_market_depth_trading_instrument_count = buffer(offset + index - 1, 1):string()
  index = index + swap_future_market_depth_trading_instrument_count * 29

  return index
end

-- Display: Swap Future Market Depth Message
display.swap_future_market_depth_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Swap Future Market Depth Message
dissect.swap_future_market_depth_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: 1 Byte Ascii String
  index, exchange_id_a_1 = dissect.exchange_id_a_1(buffer, index, packet, parent)

  -- Root Symbol X 6: 6 Byte Ascii String
  index, root_symbol_x_6 = dissect.root_symbol_x_6(buffer, index, packet, parent)

  -- Expiry Month: 1 Byte Ascii String
  index, expiry_month = dissect.expiry_month(buffer, index, packet, parent)

  -- Expiry Year: 2 Byte Ascii String
  index, expiry_year = dissect.expiry_year(buffer, index, packet, parent)

  -- Expiry Day: 2 Byte Ascii String
  index, expiry_day = dissect.expiry_day(buffer, index, packet, parent)

  -- Tenor: 2 Byte Ascii String
  index, tenor = dissect.tenor(buffer, index, packet, parent)

  -- Fixed Rate: 5 Byte Ascii String
  index, fixed_rate = dissect.fixed_rate(buffer, index, packet, parent)

  -- Fixed Rate Fraction Indicator: 1 Byte Ascii String
  index, fixed_rate_fraction_indicator = dissect.fixed_rate_fraction_indicator(buffer, index, packet, parent)

  -- Instrument Status Marker A 1: 1 Byte Ascii String
  index, instrument_status_marker_a_1 = dissect.instrument_status_marker_a_1(buffer, index, packet, parent)

  -- Number Of Level: 1 Byte Ascii String
  index, number_of_level = dissect.number_of_level(buffer, index, packet, parent)

  -- Swap Future Market Depth Trading Instrument: Struct of 9 fields
  for i = 1, number_of_level do
    index = dissect.swap_future_market_depth_trading_instrument(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Swap Future Market Depth Message
dissect.swap_future_market_depth_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.swap_future_market_depth_message then
    local length = size_of.swap_future_market_depth_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.swap_future_market_depth_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.swap_future_market_depth_message, range, display)
  end

  return dissect.swap_future_market_depth_message_fields(buffer, offset, packet, parent)
end

-- Size: Level Of Market Depth
size_of.level_of_market_depth = 1

-- Display: Level Of Market Depth
display.level_of_market_depth = function(value)
  return "Level Of Market Depth: "..value
end

-- Dissect: Level Of Market Depth
dissect.level_of_market_depth = function(buffer, offset, packet, parent)
  local length = size_of.level_of_market_depth
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.level_of_market_depth(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.level_of_market_depth, range, value, display)

  return offset + length, value
end

-- Calculate size of: Strategy Market Depth Trading Instrument
size_of.strategy_market_depth_trading_instrument = function(buffer, offset)
  local index = 0

  index = index + size_of.level_of_market_depth

  index = index + size_of.bid_price_sign

  index = index + size_of.bid_price_x_6

  index = index + size_of.bid_price_fraction_indicator

  index = index + size_of.bid_size

  index = index + size_of.number_of_bid_orders

  index = index + size_of.ask_price_sign

  index = index + size_of.ask_price_x_6

  index = index + size_of.ask_price_fraction_indicator

  index = index + size_of.ask_size

  index = index + size_of.number_of_ask_orders

  return index
end

-- Display: Strategy Market Depth Trading Instrument
display.strategy_market_depth_trading_instrument = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Strategy Market Depth Trading Instrument
dissect.strategy_market_depth_trading_instrument_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Level Of Market Depth: 1 Byte Ascii String
  index, level_of_market_depth = dissect.level_of_market_depth(buffer, index, packet, parent)

  -- Bid Price Sign: 1 Byte Ascii String
  index, bid_price_sign = dissect.bid_price_sign(buffer, index, packet, parent)

  -- Bid Price X 6: 6 Byte Ascii String
  index, bid_price_x_6 = dissect.bid_price_x_6(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: 1 Byte Ascii String
  index, bid_price_fraction_indicator = dissect.bid_price_fraction_indicator(buffer, index, packet, parent)

  -- Bid Size: 5 Byte Ascii String
  index, bid_size = dissect.bid_size(buffer, index, packet, parent)

  -- Number Of Bid Orders: 2 Byte Ascii String
  index, number_of_bid_orders = dissect.number_of_bid_orders(buffer, index, packet, parent)

  -- Ask Price Sign: 1 Byte Ascii String
  index, ask_price_sign = dissect.ask_price_sign(buffer, index, packet, parent)

  -- Ask Price X 6: 6 Byte Ascii String
  index, ask_price_x_6 = dissect.ask_price_x_6(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: 1 Byte Ascii String
  index, ask_price_fraction_indicator = dissect.ask_price_fraction_indicator(buffer, index, packet, parent)

  -- Ask Size: 5 Byte Ascii String
  index, ask_size = dissect.ask_size(buffer, index, packet, parent)

  -- Number Of Ask Orders: 2 Byte Ascii String
  index, number_of_ask_orders = dissect.number_of_ask_orders(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Market Depth Trading Instrument
dissect.strategy_market_depth_trading_instrument = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.strategy_market_depth_trading_instrument then
    local length = size_of.strategy_market_depth_trading_instrument(buffer, offset)
    local range = buffer(offset, length)
    local display = display.strategy_market_depth_trading_instrument(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_market_depth_trading_instrument, range, display)
  end

  return dissect.strategy_market_depth_trading_instrument_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Strategy Market Depth Message
size_of.strategy_market_depth_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id_a_1

  index = index + size_of.symbol

  index = index + size_of.instrument_status_marker_a_1

  index = index + size_of.number_of_level

  -- Calculate field size from count
  local strategy_market_depth_trading_instrument_count = buffer(offset + index - 1, 1):string()
  index = index + strategy_market_depth_trading_instrument_count * 31

  return index
end

-- Display: Strategy Market Depth Message
display.strategy_market_depth_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Strategy Market Depth Message
dissect.strategy_market_depth_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: 1 Byte Ascii String
  index, exchange_id_a_1 = dissect.exchange_id_a_1(buffer, index, packet, parent)

  -- Symbol: 30 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Instrument Status Marker A 1: 1 Byte Ascii String
  index, instrument_status_marker_a_1 = dissect.instrument_status_marker_a_1(buffer, index, packet, parent)

  -- Number Of Level: 1 Byte Ascii String
  index, number_of_level = dissect.number_of_level(buffer, index, packet, parent)

  -- Strategy Market Depth Trading Instrument: Struct of 11 fields
  for i = 1, number_of_level do
    index = dissect.strategy_market_depth_trading_instrument(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Strategy Market Depth Message
dissect.strategy_market_depth_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.strategy_market_depth_message then
    local length = size_of.strategy_market_depth_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.strategy_market_depth_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_market_depth_message, range, display)
  end

  return dissect.strategy_market_depth_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Futures Market Depth Trading Instrument
size_of.futures_market_depth_trading_instrument = function(buffer, offset)
  local index = 0

  index = index + size_of.level_of_market_depth

  index = index + size_of.bid_price_x_6

  index = index + size_of.bid_price_fraction_indicator

  index = index + size_of.bid_size

  index = index + size_of.number_of_bid_orders

  index = index + size_of.ask_price_n_6

  index = index + size_of.ask_price_fraction_indicator

  index = index + size_of.ask_size

  index = index + size_of.number_of_ask_orders

  return index
end

-- Display: Futures Market Depth Trading Instrument
display.futures_market_depth_trading_instrument = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Futures Market Depth Trading Instrument
dissect.futures_market_depth_trading_instrument_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Level Of Market Depth: 1 Byte Ascii String
  index, level_of_market_depth = dissect.level_of_market_depth(buffer, index, packet, parent)

  -- Bid Price X 6: 6 Byte Ascii String
  index, bid_price_x_6 = dissect.bid_price_x_6(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: 1 Byte Ascii String
  index, bid_price_fraction_indicator = dissect.bid_price_fraction_indicator(buffer, index, packet, parent)

  -- Bid Size: 5 Byte Ascii String
  index, bid_size = dissect.bid_size(buffer, index, packet, parent)

  -- Number Of Bid Orders: 2 Byte Ascii String
  index, number_of_bid_orders = dissect.number_of_bid_orders(buffer, index, packet, parent)

  -- Ask Price N 6: 6 Byte Ascii String
  index, ask_price_n_6 = dissect.ask_price_n_6(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: 1 Byte Ascii String
  index, ask_price_fraction_indicator = dissect.ask_price_fraction_indicator(buffer, index, packet, parent)

  -- Ask Size: 5 Byte Ascii String
  index, ask_size = dissect.ask_size(buffer, index, packet, parent)

  -- Number Of Ask Orders: 2 Byte Ascii String
  index, number_of_ask_orders = dissect.number_of_ask_orders(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Market Depth Trading Instrument
dissect.futures_market_depth_trading_instrument = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.futures_market_depth_trading_instrument then
    local length = size_of.futures_market_depth_trading_instrument(buffer, offset)
    local range = buffer(offset, length)
    local display = display.futures_market_depth_trading_instrument(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.futures_market_depth_trading_instrument, range, display)
  end

  return dissect.futures_market_depth_trading_instrument_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Futures Market Depth Message
size_of.futures_market_depth_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id_a_1

  index = index + size_of.root_symbol_a_6

  index = index + size_of.delivery_month

  index = index + size_of.delivery_year_n_2

  index = index + size_of.delivery_day

  index = index + size_of.instrument_status_marker_a_1

  index = index + size_of.number_of_level

  -- Calculate field size from count
  local futures_market_depth_trading_instrument_count = buffer(offset + index - 1, 1):string()
  index = index + futures_market_depth_trading_instrument_count * 29

  return index
end

-- Display: Futures Market Depth Message
display.futures_market_depth_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Futures Market Depth Message
dissect.futures_market_depth_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: 1 Byte Ascii String
  index, exchange_id_a_1 = dissect.exchange_id_a_1(buffer, index, packet, parent)

  -- Root Symbol A 6: 6 Byte Ascii String
  index, root_symbol_a_6 = dissect.root_symbol_a_6(buffer, index, packet, parent)

  -- Delivery Month: 1 Byte Ascii String
  index, delivery_month = dissect.delivery_month(buffer, index, packet, parent)

  -- Delivery Year N 2: 2 Byte Ascii String
  index, delivery_year_n_2 = dissect.delivery_year_n_2(buffer, index, packet, parent)

  -- Delivery Day: 2 Byte Ascii String
  index, delivery_day = dissect.delivery_day(buffer, index, packet, parent)

  -- Instrument Status Marker A 1: 1 Byte Ascii String
  index, instrument_status_marker_a_1 = dissect.instrument_status_marker_a_1(buffer, index, packet, parent)

  -- Number Of Level: 1 Byte Ascii String
  index, number_of_level = dissect.number_of_level(buffer, index, packet, parent)

  -- Futures Market Depth Trading Instrument: Struct of 9 fields
  for i = 1, number_of_level do
    index = dissect.futures_market_depth_trading_instrument(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Futures Market Depth Message
dissect.futures_market_depth_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.futures_market_depth_message then
    local length = size_of.futures_market_depth_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.futures_market_depth_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.futures_market_depth_message, range, display)
  end

  return dissect.futures_market_depth_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Future Options Market Depth Trading Instrument
size_of.future_options_market_depth_trading_instrument = function(buffer, offset)
  local index = 0

  index = index + size_of.level_of_market_depth

  index = index + size_of.bid_price_x_6

  index = index + size_of.bid_price_fraction_indicator

  index = index + size_of.bid_size

  index = index + size_of.number_of_bid_orders

  index = index + size_of.ask_price_x_6

  index = index + size_of.ask_price_fraction_indicator

  index = index + size_of.ask_size

  index = index + size_of.number_of_ask_orders

  return index
end

-- Display: Future Options Market Depth Trading Instrument
display.future_options_market_depth_trading_instrument = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Future Options Market Depth Trading Instrument
dissect.future_options_market_depth_trading_instrument_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Level Of Market Depth: 1 Byte Ascii String
  index, level_of_market_depth = dissect.level_of_market_depth(buffer, index, packet, parent)

  -- Bid Price X 6: 6 Byte Ascii String
  index, bid_price_x_6 = dissect.bid_price_x_6(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: 1 Byte Ascii String
  index, bid_price_fraction_indicator = dissect.bid_price_fraction_indicator(buffer, index, packet, parent)

  -- Bid Size: 5 Byte Ascii String
  index, bid_size = dissect.bid_size(buffer, index, packet, parent)

  -- Number Of Bid Orders: 2 Byte Ascii String
  index, number_of_bid_orders = dissect.number_of_bid_orders(buffer, index, packet, parent)

  -- Ask Price X 6: 6 Byte Ascii String
  index, ask_price_x_6 = dissect.ask_price_x_6(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: 1 Byte Ascii String
  index, ask_price_fraction_indicator = dissect.ask_price_fraction_indicator(buffer, index, packet, parent)

  -- Ask Size: 5 Byte Ascii String
  index, ask_size = dissect.ask_size(buffer, index, packet, parent)

  -- Number Of Ask Orders: 2 Byte Ascii String
  index, number_of_ask_orders = dissect.number_of_ask_orders(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Options Market Depth Trading Instrument
dissect.future_options_market_depth_trading_instrument = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.future_options_market_depth_trading_instrument then
    local length = size_of.future_options_market_depth_trading_instrument(buffer, offset)
    local range = buffer(offset, length)
    local display = display.future_options_market_depth_trading_instrument(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.future_options_market_depth_trading_instrument, range, display)
  end

  return dissect.future_options_market_depth_trading_instrument_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Future Options Market Depth Message
size_of.future_options_market_depth_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id_a_1

  index = index + size_of.root_symbol_a_6

  index = index + size_of.contract_month_code

  index = index + size_of.expiry_year

  index = index + size_of.expiry_day

  index = index + size_of.call_put_code

  index = index + size_of.strike_price_n_7

  index = index + size_of.strike_price_fraction_indicator

  index = index + size_of.instrument_status_marker_a_1

  index = index + size_of.number_of_level

  -- Calculate field size from count
  local future_options_market_depth_trading_instrument_count = buffer(offset + index - 1, 1):string()
  index = index + future_options_market_depth_trading_instrument_count * 29

  return index
end

-- Display: Future Options Market Depth Message
display.future_options_market_depth_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Future Options Market Depth Message
dissect.future_options_market_depth_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: 1 Byte Ascii String
  index, exchange_id_a_1 = dissect.exchange_id_a_1(buffer, index, packet, parent)

  -- Root Symbol A 6: 6 Byte Ascii String
  index, root_symbol_a_6 = dissect.root_symbol_a_6(buffer, index, packet, parent)

  -- Contract Month Code: 1 Byte Ascii String
  index, contract_month_code = dissect.contract_month_code(buffer, index, packet, parent)

  -- Expiry Year: 2 Byte Ascii String
  index, expiry_year = dissect.expiry_year(buffer, index, packet, parent)

  -- Expiry Day: 2 Byte Ascii String
  index, expiry_day = dissect.expiry_day(buffer, index, packet, parent)

  -- Call Put Code: 1 Byte Ascii String Enum with 2 values
  index, call_put_code = dissect.call_put_code(buffer, index, packet, parent)

  -- Strike Price N 7: 7 Byte Ascii String
  index, strike_price_n_7 = dissect.strike_price_n_7(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: 1 Byte Ascii String
  index, strike_price_fraction_indicator = dissect.strike_price_fraction_indicator(buffer, index, packet, parent)

  -- Instrument Status Marker A 1: 1 Byte Ascii String
  index, instrument_status_marker_a_1 = dissect.instrument_status_marker_a_1(buffer, index, packet, parent)

  -- Number Of Level: 1 Byte Ascii String
  index, number_of_level = dissect.number_of_level(buffer, index, packet, parent)

  -- Future Options Market Depth Trading Instrument: Struct of 9 fields
  for i = 1, number_of_level do
    index = dissect.future_options_market_depth_trading_instrument(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Future Options Market Depth Message
dissect.future_options_market_depth_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.future_options_market_depth_message then
    local length = size_of.future_options_market_depth_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.future_options_market_depth_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.future_options_market_depth_message, range, display)
  end

  return dissect.future_options_market_depth_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Option Market Depth Trading Instrument
size_of.option_market_depth_trading_instrument = function(buffer, offset)
  local index = 0

  index = index + size_of.level_of_market_depth

  index = index + size_of.bid_price_x_6

  index = index + size_of.bid_price_fraction_indicator

  index = index + size_of.bid_size

  index = index + size_of.number_of_bid_orders

  index = index + size_of.ask_price_x_6

  index = index + size_of.ask_price_fraction_indicator

  index = index + size_of.ask_size

  index = index + size_of.number_of_ask_orders

  return index
end

-- Display: Option Market Depth Trading Instrument
display.option_market_depth_trading_instrument = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Option Market Depth Trading Instrument
dissect.option_market_depth_trading_instrument_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Level Of Market Depth: 1 Byte Ascii String
  index, level_of_market_depth = dissect.level_of_market_depth(buffer, index, packet, parent)

  -- Bid Price X 6: 6 Byte Ascii String
  index, bid_price_x_6 = dissect.bid_price_x_6(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: 1 Byte Ascii String
  index, bid_price_fraction_indicator = dissect.bid_price_fraction_indicator(buffer, index, packet, parent)

  -- Bid Size: 5 Byte Ascii String
  index, bid_size = dissect.bid_size(buffer, index, packet, parent)

  -- Number Of Bid Orders: 2 Byte Ascii String
  index, number_of_bid_orders = dissect.number_of_bid_orders(buffer, index, packet, parent)

  -- Ask Price X 6: 6 Byte Ascii String
  index, ask_price_x_6 = dissect.ask_price_x_6(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: 1 Byte Ascii String
  index, ask_price_fraction_indicator = dissect.ask_price_fraction_indicator(buffer, index, packet, parent)

  -- Ask Size: 5 Byte Ascii String
  index, ask_size = dissect.ask_size(buffer, index, packet, parent)

  -- Number Of Ask Orders: 2 Byte Ascii String
  index, number_of_ask_orders = dissect.number_of_ask_orders(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Market Depth Trading Instrument
dissect.option_market_depth_trading_instrument = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.option_market_depth_trading_instrument then
    local length = size_of.option_market_depth_trading_instrument(buffer, offset)
    local range = buffer(offset, length)
    local display = display.option_market_depth_trading_instrument(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.option_market_depth_trading_instrument, range, display)
  end

  return dissect.option_market_depth_trading_instrument_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Option Market Depth Message
size_of.option_market_depth_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id_a_1

  index = index + size_of.root_symbol_x_6

  index = index + size_of.expiry_month

  index = index + size_of.filler_a_1

  index = index + size_of.strike_price_n_7

  index = index + size_of.strike_price_fraction_indicator

  index = index + size_of.expiry_year

  index = index + size_of.expiry_day

  index = index + size_of.instrument_status_marker_a_1

  index = index + size_of.number_of_level

  -- Calculate field size from count
  local option_market_depth_trading_instrument_count = buffer(offset + index - 1, 1):string()
  index = index + option_market_depth_trading_instrument_count * 29

  return index
end

-- Display: Option Market Depth Message
display.option_market_depth_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Option Market Depth Message
dissect.option_market_depth_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: 1 Byte Ascii String
  index, exchange_id_a_1 = dissect.exchange_id_a_1(buffer, index, packet, parent)

  -- Root Symbol X 6: 6 Byte Ascii String
  index, root_symbol_x_6 = dissect.root_symbol_x_6(buffer, index, packet, parent)

  -- Expiry Month: 1 Byte Ascii String
  index, expiry_month = dissect.expiry_month(buffer, index, packet, parent)

  -- Filler A 1: 1 Byte Ascii String
  index, filler_a_1 = dissect.filler_a_1(buffer, index, packet, parent)

  -- Strike Price N 7: 7 Byte Ascii String
  index, strike_price_n_7 = dissect.strike_price_n_7(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: 1 Byte Ascii String
  index, strike_price_fraction_indicator = dissect.strike_price_fraction_indicator(buffer, index, packet, parent)

  -- Expiry Year: 2 Byte Ascii String
  index, expiry_year = dissect.expiry_year(buffer, index, packet, parent)

  -- Expiry Day: 2 Byte Ascii String
  index, expiry_day = dissect.expiry_day(buffer, index, packet, parent)

  -- Instrument Status Marker A 1: 1 Byte Ascii String
  index, instrument_status_marker_a_1 = dissect.instrument_status_marker_a_1(buffer, index, packet, parent)

  -- Number Of Level: 1 Byte Ascii String
  index, number_of_level = dissect.number_of_level(buffer, index, packet, parent)

  -- Option Market Depth Trading Instrument: Struct of 9 fields
  for i = 1, number_of_level do
    index = dissect.option_market_depth_trading_instrument(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Option Market Depth Message
dissect.option_market_depth_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.option_market_depth_message then
    local length = size_of.option_market_depth_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.option_market_depth_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.option_market_depth_message, range, display)
  end

  return dissect.option_market_depth_message_fields(buffer, offset, packet, parent)
end

-- Size: Instrument Status Marker X 1
size_of.instrument_status_marker_x_1 = 1

-- Display: Instrument Status Marker X 1
display.instrument_status_marker_x_1 = function(value)
  return "Instrument Status Marker X 1: "..value
end

-- Dissect: Instrument Status Marker X 1
dissect.instrument_status_marker_x_1 = function(buffer, offset, packet, parent)
  local length = size_of.instrument_status_marker_x_1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.instrument_status_marker_x_1(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.instrument_status_marker_x_1, range, value, display)

  return offset + length, value
end

-- Calculate size of: Swap Future Quote Message
size_of.swap_future_quote_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id_a_1

  index = index + size_of.root_symbol_x_6

  index = index + size_of.expiry_month

  index = index + size_of.expiry_year

  index = index + size_of.expiry_day

  index = index + size_of.tenor

  index = index + size_of.fixed_rate

  index = index + size_of.fixed_rate_fraction_indicator

  index = index + size_of.bid_price_x_6

  index = index + size_of.bid_price_fraction_indicator

  index = index + size_of.bid_size

  index = index + size_of.ask_price_x_6

  index = index + size_of.ask_price_fraction_indicator

  index = index + size_of.ask_size

  index = index + size_of.instrument_status_marker_x_1

  return index
end

-- Display: Swap Future Quote Message
display.swap_future_quote_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Swap Future Quote Message
dissect.swap_future_quote_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: 1 Byte Ascii String
  index, exchange_id_a_1 = dissect.exchange_id_a_1(buffer, index, packet, parent)

  -- Root Symbol X 6: 6 Byte Ascii String
  index, root_symbol_x_6 = dissect.root_symbol_x_6(buffer, index, packet, parent)

  -- Expiry Month: 1 Byte Ascii String
  index, expiry_month = dissect.expiry_month(buffer, index, packet, parent)

  -- Expiry Year: 2 Byte Ascii String
  index, expiry_year = dissect.expiry_year(buffer, index, packet, parent)

  -- Expiry Day: 2 Byte Ascii String
  index, expiry_day = dissect.expiry_day(buffer, index, packet, parent)

  -- Tenor: 2 Byte Ascii String
  index, tenor = dissect.tenor(buffer, index, packet, parent)

  -- Fixed Rate: 5 Byte Ascii String
  index, fixed_rate = dissect.fixed_rate(buffer, index, packet, parent)

  -- Fixed Rate Fraction Indicator: 1 Byte Ascii String
  index, fixed_rate_fraction_indicator = dissect.fixed_rate_fraction_indicator(buffer, index, packet, parent)

  -- Bid Price X 6: 6 Byte Ascii String
  index, bid_price_x_6 = dissect.bid_price_x_6(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: 1 Byte Ascii String
  index, bid_price_fraction_indicator = dissect.bid_price_fraction_indicator(buffer, index, packet, parent)

  -- Bid Size: 5 Byte Ascii String
  index, bid_size = dissect.bid_size(buffer, index, packet, parent)

  -- Ask Price X 6: 6 Byte Ascii String
  index, ask_price_x_6 = dissect.ask_price_x_6(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: 1 Byte Ascii String
  index, ask_price_fraction_indicator = dissect.ask_price_fraction_indicator(buffer, index, packet, parent)

  -- Ask Size: 5 Byte Ascii String
  index, ask_size = dissect.ask_size(buffer, index, packet, parent)

  -- Instrument Status Marker X 1: 1 Byte Ascii String
  index, instrument_status_marker_x_1 = dissect.instrument_status_marker_x_1(buffer, index, packet, parent)

  return index
end

-- Dissect: Swap Future Quote Message
dissect.swap_future_quote_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.swap_future_quote_message then
    local length = size_of.swap_future_quote_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.swap_future_quote_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.swap_future_quote_message, range, display)
  end

  return dissect.swap_future_quote_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Strategy Quote Message
size_of.strategy_quote_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id_a_1

  index = index + size_of.symbol

  index = index + size_of.bid_price_sign

  index = index + size_of.bid_price_x_6

  index = index + size_of.bid_price_fraction_indicator

  index = index + size_of.bid_size

  index = index + size_of.ask_price_sign

  index = index + size_of.ask_price_x_6

  index = index + size_of.ask_price_fraction_indicator

  index = index + size_of.ask_size

  index = index + size_of.instrument_status_marker_x_1

  return index
end

-- Display: Strategy Quote Message
display.strategy_quote_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Strategy Quote Message
dissect.strategy_quote_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: 1 Byte Ascii String
  index, exchange_id_a_1 = dissect.exchange_id_a_1(buffer, index, packet, parent)

  -- Symbol: 30 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Bid Price Sign: 1 Byte Ascii String
  index, bid_price_sign = dissect.bid_price_sign(buffer, index, packet, parent)

  -- Bid Price X 6: 6 Byte Ascii String
  index, bid_price_x_6 = dissect.bid_price_x_6(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: 1 Byte Ascii String
  index, bid_price_fraction_indicator = dissect.bid_price_fraction_indicator(buffer, index, packet, parent)

  -- Bid Size: 5 Byte Ascii String
  index, bid_size = dissect.bid_size(buffer, index, packet, parent)

  -- Ask Price Sign: 1 Byte Ascii String
  index, ask_price_sign = dissect.ask_price_sign(buffer, index, packet, parent)

  -- Ask Price X 6: 6 Byte Ascii String
  index, ask_price_x_6 = dissect.ask_price_x_6(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: 1 Byte Ascii String
  index, ask_price_fraction_indicator = dissect.ask_price_fraction_indicator(buffer, index, packet, parent)

  -- Ask Size: 5 Byte Ascii String
  index, ask_size = dissect.ask_size(buffer, index, packet, parent)

  -- Instrument Status Marker X 1: 1 Byte Ascii String
  index, instrument_status_marker_x_1 = dissect.instrument_status_marker_x_1(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Quote Message
dissect.strategy_quote_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.strategy_quote_message then
    local length = size_of.strategy_quote_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.strategy_quote_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_quote_message, range, display)
  end

  return dissect.strategy_quote_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Futures Quote Message
size_of.futures_quote_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id_a_1

  index = index + size_of.root_symbol_a_6

  index = index + size_of.delivery_month

  index = index + size_of.delivery_year_n_2

  index = index + size_of.delivery_day

  index = index + size_of.bid_price_x_6

  index = index + size_of.bid_price_fraction_indicator

  index = index + size_of.bid_size

  index = index + size_of.ask_price_x_6

  index = index + size_of.ask_price_fraction_indicator

  index = index + size_of.ask_size

  index = index + size_of.instrument_status_marker_a_1

  return index
end

-- Display: Futures Quote Message
display.futures_quote_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Futures Quote Message
dissect.futures_quote_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: 1 Byte Ascii String
  index, exchange_id_a_1 = dissect.exchange_id_a_1(buffer, index, packet, parent)

  -- Root Symbol A 6: 6 Byte Ascii String
  index, root_symbol_a_6 = dissect.root_symbol_a_6(buffer, index, packet, parent)

  -- Delivery Month: 1 Byte Ascii String
  index, delivery_month = dissect.delivery_month(buffer, index, packet, parent)

  -- Delivery Year N 2: 2 Byte Ascii String
  index, delivery_year_n_2 = dissect.delivery_year_n_2(buffer, index, packet, parent)

  -- Delivery Day: 2 Byte Ascii String
  index, delivery_day = dissect.delivery_day(buffer, index, packet, parent)

  -- Bid Price X 6: 6 Byte Ascii String
  index, bid_price_x_6 = dissect.bid_price_x_6(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: 1 Byte Ascii String
  index, bid_price_fraction_indicator = dissect.bid_price_fraction_indicator(buffer, index, packet, parent)

  -- Bid Size: 5 Byte Ascii String
  index, bid_size = dissect.bid_size(buffer, index, packet, parent)

  -- Ask Price X 6: 6 Byte Ascii String
  index, ask_price_x_6 = dissect.ask_price_x_6(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: 1 Byte Ascii String
  index, ask_price_fraction_indicator = dissect.ask_price_fraction_indicator(buffer, index, packet, parent)

  -- Ask Size: 5 Byte Ascii String
  index, ask_size = dissect.ask_size(buffer, index, packet, parent)

  -- Instrument Status Marker A 1: 1 Byte Ascii String
  index, instrument_status_marker_a_1 = dissect.instrument_status_marker_a_1(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Quote Message
dissect.futures_quote_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.futures_quote_message then
    local length = size_of.futures_quote_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.futures_quote_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.futures_quote_message, range, display)
  end

  return dissect.futures_quote_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Future Options Quote Message
size_of.future_options_quote_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_i_d

  index = index + size_of.root_symbol_a_6

  index = index + size_of.contract_month_code

  index = index + size_of.expiry_year

  index = index + size_of.expiry_day

  index = index + size_of.call_put_code

  index = index + size_of.strike_price_n_7

  index = index + size_of.strike_price_fraction_indicator

  index = index + size_of.bid_price_x_6

  index = index + size_of.bid_price_fraction_indicator

  index = index + size_of.bid_size

  index = index + size_of.ask_price_x_6

  index = index + size_of.ask_price_fraction_indicator

  index = index + size_of.ask_size

  index = index + size_of.instrument_status_marker_a_1

  index = index + size_of.filler_x_1

  return index
end

-- Display: Future Options Quote Message
display.future_options_quote_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Future Options Quote Message
dissect.future_options_quote_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange I D: 1 Byte Ascii String
  index, exchange_i_d = dissect.exchange_i_d(buffer, index, packet, parent)

  -- Root Symbol A 6: 6 Byte Ascii String
  index, root_symbol_a_6 = dissect.root_symbol_a_6(buffer, index, packet, parent)

  -- Contract Month Code: 1 Byte Ascii String
  index, contract_month_code = dissect.contract_month_code(buffer, index, packet, parent)

  -- Expiry Year: 2 Byte Ascii String
  index, expiry_year = dissect.expiry_year(buffer, index, packet, parent)

  -- Expiry Day: 2 Byte Ascii String
  index, expiry_day = dissect.expiry_day(buffer, index, packet, parent)

  -- Call Put Code: 1 Byte Ascii String Enum with 2 values
  index, call_put_code = dissect.call_put_code(buffer, index, packet, parent)

  -- Strike Price N 7: 7 Byte Ascii String
  index, strike_price_n_7 = dissect.strike_price_n_7(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: 1 Byte Ascii String
  index, strike_price_fraction_indicator = dissect.strike_price_fraction_indicator(buffer, index, packet, parent)

  -- Bid Price X 6: 6 Byte Ascii String
  index, bid_price_x_6 = dissect.bid_price_x_6(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: 1 Byte Ascii String
  index, bid_price_fraction_indicator = dissect.bid_price_fraction_indicator(buffer, index, packet, parent)

  -- Bid Size: 5 Byte Ascii String
  index, bid_size = dissect.bid_size(buffer, index, packet, parent)

  -- Ask Price X 6: 6 Byte Ascii String
  index, ask_price_x_6 = dissect.ask_price_x_6(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: 1 Byte Ascii String
  index, ask_price_fraction_indicator = dissect.ask_price_fraction_indicator(buffer, index, packet, parent)

  -- Ask Size: 5 Byte Ascii String
  index, ask_size = dissect.ask_size(buffer, index, packet, parent)

  -- Instrument Status Marker A 1: 1 Byte Ascii String
  index, instrument_status_marker_a_1 = dissect.instrument_status_marker_a_1(buffer, index, packet, parent)

  -- Filler X 1: 1 Byte Ascii String
  index, filler_x_1 = dissect.filler_x_1(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Options Quote Message
dissect.future_options_quote_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.future_options_quote_message then
    local length = size_of.future_options_quote_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.future_options_quote_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.future_options_quote_message, range, display)
  end

  return dissect.future_options_quote_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Option Quote Message
size_of.option_quote_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_i_d

  index = index + size_of.root_symbol_x_6

  index = index + size_of.expiry_month

  index = index + size_of.filler_a_1

  index = index + size_of.strike_price_n_7

  index = index + size_of.strike_price_fraction_indicator

  index = index + size_of.expiry_year

  index = index + size_of.expiry_day

  index = index + size_of.bid_price_x_6

  index = index + size_of.bid_price_fraction_indicator

  index = index + size_of.bid_size

  index = index + size_of.ask_price_x_6

  index = index + size_of.ask_price_fraction_indicator

  index = index + size_of.ask_size

  index = index + size_of.filler_x_1

  index = index + size_of.instrument_status_marker_a_1

  return index
end

-- Display: Option Quote Message
display.option_quote_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Option Quote Message
dissect.option_quote_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange I D: 1 Byte Ascii String
  index, exchange_i_d = dissect.exchange_i_d(buffer, index, packet, parent)

  -- Root Symbol X 6: 6 Byte Ascii String
  index, root_symbol_x_6 = dissect.root_symbol_x_6(buffer, index, packet, parent)

  -- Expiry Month: 1 Byte Ascii String
  index, expiry_month = dissect.expiry_month(buffer, index, packet, parent)

  -- Filler A 1: 1 Byte Ascii String
  index, filler_a_1 = dissect.filler_a_1(buffer, index, packet, parent)

  -- Strike Price N 7: 7 Byte Ascii String
  index, strike_price_n_7 = dissect.strike_price_n_7(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: 1 Byte Ascii String
  index, strike_price_fraction_indicator = dissect.strike_price_fraction_indicator(buffer, index, packet, parent)

  -- Expiry Year: 2 Byte Ascii String
  index, expiry_year = dissect.expiry_year(buffer, index, packet, parent)

  -- Expiry Day: 2 Byte Ascii String
  index, expiry_day = dissect.expiry_day(buffer, index, packet, parent)

  -- Bid Price X 6: 6 Byte Ascii String
  index, bid_price_x_6 = dissect.bid_price_x_6(buffer, index, packet, parent)

  -- Bid Price Fraction Indicator: 1 Byte Ascii String
  index, bid_price_fraction_indicator = dissect.bid_price_fraction_indicator(buffer, index, packet, parent)

  -- Bid Size: 5 Byte Ascii String
  index, bid_size = dissect.bid_size(buffer, index, packet, parent)

  -- Ask Price X 6: 6 Byte Ascii String
  index, ask_price_x_6 = dissect.ask_price_x_6(buffer, index, packet, parent)

  -- Ask Price Fraction Indicator: 1 Byte Ascii String
  index, ask_price_fraction_indicator = dissect.ask_price_fraction_indicator(buffer, index, packet, parent)

  -- Ask Size: 5 Byte Ascii String
  index, ask_size = dissect.ask_size(buffer, index, packet, parent)

  -- Filler X 1: 1 Byte Ascii String
  index, filler_x_1 = dissect.filler_x_1(buffer, index, packet, parent)

  -- Instrument Status Marker A 1: 1 Byte Ascii String
  index, instrument_status_marker_a_1 = dissect.instrument_status_marker_a_1(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Quote Message
dissect.option_quote_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.option_quote_message then
    local length = size_of.option_quote_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.option_quote_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.option_quote_message, range, display)
  end

  return dissect.option_quote_message_fields(buffer, offset, packet, parent)
end

-- Size: Scheduled Status Change Time
size_of.scheduled_status_change_time = 6

-- Display: Scheduled Status Change Time
display.scheduled_status_change_time = function(value)
  return "Scheduled Status Change Time: "..value
end

-- Dissect: Scheduled Status Change Time
dissect.scheduled_status_change_time = function(buffer, offset, packet, parent)
  local length = size_of.scheduled_status_change_time
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = display.scheduled_status_change_time(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.scheduled_status_change_time, range, value, display)

  return offset + length, value
end

-- Size: Series Status
size_of.series_status = 1

-- Display: Series Status
display.series_status = function(value)
  return "Series Status: "..value
end

-- Dissect: Series Status
dissect.series_status = function(buffer, offset, packet, parent)
  local length = size_of.series_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.series_status(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.series_status, range, value, display)

  return offset + length, value
end

-- Calculate size of: Instrument Schedule Notice Swap Future Message
size_of.instrument_schedule_notice_swap_future_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id_a_1

  index = index + size_of.root_symbol_a_6

  index = index + size_of.expiry_month

  index = index + size_of.expiry_year

  index = index + size_of.expiry_day

  index = index + size_of.tenor

  index = index + size_of.fixed_rate

  index = index + size_of.fixed_rate_fraction_indicator

  index = index + size_of.series_status

  index = index + size_of.scheduled_status_change_time

  return index
end

-- Display: Instrument Schedule Notice Swap Future Message
display.instrument_schedule_notice_swap_future_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Instrument Schedule Notice Swap Future Message
dissect.instrument_schedule_notice_swap_future_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: 1 Byte Ascii String
  index, exchange_id_a_1 = dissect.exchange_id_a_1(buffer, index, packet, parent)

  -- Root Symbol A 6: 6 Byte Ascii String
  index, root_symbol_a_6 = dissect.root_symbol_a_6(buffer, index, packet, parent)

  -- Expiry Month: 1 Byte Ascii String
  index, expiry_month = dissect.expiry_month(buffer, index, packet, parent)

  -- Expiry Year: 2 Byte Ascii String
  index, expiry_year = dissect.expiry_year(buffer, index, packet, parent)

  -- Expiry Day: 2 Byte Ascii String
  index, expiry_day = dissect.expiry_day(buffer, index, packet, parent)

  -- Tenor: 2 Byte Ascii String
  index, tenor = dissect.tenor(buffer, index, packet, parent)

  -- Fixed Rate: 5 Byte Ascii String
  index, fixed_rate = dissect.fixed_rate(buffer, index, packet, parent)

  -- Fixed Rate Fraction Indicator: 1 Byte Ascii String
  index, fixed_rate_fraction_indicator = dissect.fixed_rate_fraction_indicator(buffer, index, packet, parent)

  -- Series Status: 1 Byte Ascii String
  index, series_status = dissect.series_status(buffer, index, packet, parent)

  -- Scheduled Status Change Time: 6 Byte Ascii String
  index, scheduled_status_change_time = dissect.scheduled_status_change_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Schedule Notice Swap Future Message
dissect.instrument_schedule_notice_swap_future_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.instrument_schedule_notice_swap_future_message then
    local length = size_of.instrument_schedule_notice_swap_future_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.instrument_schedule_notice_swap_future_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.instrument_schedule_notice_swap_future_message, range, display)
  end

  return dissect.instrument_schedule_notice_swap_future_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Instrument Schedule Notice Strategy Message
size_of.instrument_schedule_notice_strategy_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id_a_1

  index = index + size_of.strategy_symbol

  index = index + size_of.series_status

  index = index + size_of.scheduled_status_change_time

  return index
end

-- Display: Instrument Schedule Notice Strategy Message
display.instrument_schedule_notice_strategy_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Instrument Schedule Notice Strategy Message
dissect.instrument_schedule_notice_strategy_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: 1 Byte Ascii String
  index, exchange_id_a_1 = dissect.exchange_id_a_1(buffer, index, packet, parent)

  -- Strategy Symbol: 30 Byte Ascii String
  index, strategy_symbol = dissect.strategy_symbol(buffer, index, packet, parent)

  -- Series Status: 1 Byte Ascii String
  index, series_status = dissect.series_status(buffer, index, packet, parent)

  -- Scheduled Status Change Time: 6 Byte Ascii String
  index, scheduled_status_change_time = dissect.scheduled_status_change_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Schedule Notice Strategy Message
dissect.instrument_schedule_notice_strategy_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.instrument_schedule_notice_strategy_message then
    local length = size_of.instrument_schedule_notice_strategy_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.instrument_schedule_notice_strategy_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.instrument_schedule_notice_strategy_message, range, display)
  end

  return dissect.instrument_schedule_notice_strategy_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Instrument Schedule Notice Future Message
size_of.instrument_schedule_notice_future_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id_a_1

  index = index + size_of.root_symbol_a_6

  index = index + size_of.delivery_month

  index = index + size_of.delivery_year_n_2

  index = index + size_of.delivery_day

  index = index + size_of.series_status

  index = index + size_of.scheduled_status_change_time

  return index
end

-- Display: Instrument Schedule Notice Future Message
display.instrument_schedule_notice_future_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Instrument Schedule Notice Future Message
dissect.instrument_schedule_notice_future_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: 1 Byte Ascii String
  index, exchange_id_a_1 = dissect.exchange_id_a_1(buffer, index, packet, parent)

  -- Root Symbol A 6: 6 Byte Ascii String
  index, root_symbol_a_6 = dissect.root_symbol_a_6(buffer, index, packet, parent)

  -- Delivery Month: 1 Byte Ascii String
  index, delivery_month = dissect.delivery_month(buffer, index, packet, parent)

  -- Delivery Year N 2: 2 Byte Ascii String
  index, delivery_year_n_2 = dissect.delivery_year_n_2(buffer, index, packet, parent)

  -- Delivery Day: 2 Byte Ascii String
  index, delivery_day = dissect.delivery_day(buffer, index, packet, parent)

  -- Series Status: 1 Byte Ascii String
  index, series_status = dissect.series_status(buffer, index, packet, parent)

  -- Scheduled Status Change Time: 6 Byte Ascii String
  index, scheduled_status_change_time = dissect.scheduled_status_change_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Schedule Notice Future Message
dissect.instrument_schedule_notice_future_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.instrument_schedule_notice_future_message then
    local length = size_of.instrument_schedule_notice_future_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.instrument_schedule_notice_future_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.instrument_schedule_notice_future_message, range, display)
  end

  return dissect.instrument_schedule_notice_future_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Instrument Schedule Notice Futures Option Message
size_of.instrument_schedule_notice_futures_option_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id_a_1

  index = index + size_of.root_symbol_a_6

  index = index + size_of.contract_month_code

  index = index + size_of.expiry_year

  index = index + size_of.expiry_day

  index = index + size_of.call_put_code

  index = index + size_of.strike_price_n_7

  index = index + size_of.strike_price_fraction_indicator

  index = index + size_of.series_status

  index = index + size_of.scheduled_status_change_time

  return index
end

-- Display: Instrument Schedule Notice Futures Option Message
display.instrument_schedule_notice_futures_option_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Instrument Schedule Notice Futures Option Message
dissect.instrument_schedule_notice_futures_option_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: 1 Byte Ascii String
  index, exchange_id_a_1 = dissect.exchange_id_a_1(buffer, index, packet, parent)

  -- Root Symbol A 6: 6 Byte Ascii String
  index, root_symbol_a_6 = dissect.root_symbol_a_6(buffer, index, packet, parent)

  -- Contract Month Code: 1 Byte Ascii String
  index, contract_month_code = dissect.contract_month_code(buffer, index, packet, parent)

  -- Expiry Year: 2 Byte Ascii String
  index, expiry_year = dissect.expiry_year(buffer, index, packet, parent)

  -- Expiry Day: 2 Byte Ascii String
  index, expiry_day = dissect.expiry_day(buffer, index, packet, parent)

  -- Call Put Code: 1 Byte Ascii String Enum with 2 values
  index, call_put_code = dissect.call_put_code(buffer, index, packet, parent)

  -- Strike Price N 7: 7 Byte Ascii String
  index, strike_price_n_7 = dissect.strike_price_n_7(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: 1 Byte Ascii String
  index, strike_price_fraction_indicator = dissect.strike_price_fraction_indicator(buffer, index, packet, parent)

  -- Series Status: 1 Byte Ascii String
  index, series_status = dissect.series_status(buffer, index, packet, parent)

  -- Scheduled Status Change Time: 6 Byte Ascii String
  index, scheduled_status_change_time = dissect.scheduled_status_change_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Schedule Notice Futures Option Message
dissect.instrument_schedule_notice_futures_option_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.instrument_schedule_notice_futures_option_message then
    local length = size_of.instrument_schedule_notice_futures_option_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.instrument_schedule_notice_futures_option_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.instrument_schedule_notice_futures_option_message, range, display)
  end

  return dissect.instrument_schedule_notice_futures_option_message_fields(buffer, offset, packet, parent)
end

-- Size: Strike Price X 7
size_of.strike_price_x_7 = 7

-- Display: Strike Price X 7
display.strike_price_x_7 = function(value)
  return "Strike Price X 7: "..value
end

-- Dissect: Strike Price X 7
dissect.strike_price_x_7 = function(buffer, offset, packet, parent)
  local length = size_of.strike_price_x_7
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.strike_price_x_7(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.strike_price_x_7, range, value, display)

  return offset + length, value
end

-- Calculate size of: Instrument Schedule Notice Option Message
size_of.instrument_schedule_notice_option_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id_a_1

  index = index + size_of.root_symbol_x_6

  index = index + size_of.expiry_month

  index = index + size_of.filler_a_1

  index = index + size_of.strike_price_x_7

  index = index + size_of.strike_price_fraction_indicator

  index = index + size_of.expiry_year

  index = index + size_of.expiry_day

  index = index + size_of.series_status

  index = index + size_of.scheduled_status_change_time

  return index
end

-- Display: Instrument Schedule Notice Option Message
display.instrument_schedule_notice_option_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Instrument Schedule Notice Option Message
dissect.instrument_schedule_notice_option_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: 1 Byte Ascii String
  index, exchange_id_a_1 = dissect.exchange_id_a_1(buffer, index, packet, parent)

  -- Root Symbol X 6: 6 Byte Ascii String
  index, root_symbol_x_6 = dissect.root_symbol_x_6(buffer, index, packet, parent)

  -- Expiry Month: 1 Byte Ascii String
  index, expiry_month = dissect.expiry_month(buffer, index, packet, parent)

  -- Filler A 1: 1 Byte Ascii String
  index, filler_a_1 = dissect.filler_a_1(buffer, index, packet, parent)

  -- Strike Price X 7: 7 Byte Ascii String
  index, strike_price_x_7 = dissect.strike_price_x_7(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: 1 Byte Ascii String
  index, strike_price_fraction_indicator = dissect.strike_price_fraction_indicator(buffer, index, packet, parent)

  -- Expiry Year: 2 Byte Ascii String
  index, expiry_year = dissect.expiry_year(buffer, index, packet, parent)

  -- Expiry Day: 2 Byte Ascii String
  index, expiry_day = dissect.expiry_day(buffer, index, packet, parent)

  -- Series Status: 1 Byte Ascii String
  index, series_status = dissect.series_status(buffer, index, packet, parent)

  -- Scheduled Status Change Time: 6 Byte Ascii String
  index, scheduled_status_change_time = dissect.scheduled_status_change_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument Schedule Notice Option Message
dissect.instrument_schedule_notice_option_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.instrument_schedule_notice_option_message then
    local length = size_of.instrument_schedule_notice_option_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.instrument_schedule_notice_option_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.instrument_schedule_notice_option_message, range, display)
  end

  return dissect.instrument_schedule_notice_option_message_fields(buffer, offset, packet, parent)
end

-- Size: Requested Market Side
size_of.requested_market_side = 1

-- Display: Requested Market Side
display.requested_market_side = function(value)
  if value == "B" then
    return "Requested Market Side: Buy (B)"
  end
  if value == "S" then
    return "Requested Market Side: Sell (S)"
  end
  if value == "2" then
    return "Requested Market Side: Both (2)"
  end

  return "Requested Market Side: Unknown("..value..")"
end

-- Dissect: Requested Market Side
dissect.requested_market_side = function(buffer, offset, packet, parent)
  local length = size_of.requested_market_side
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.requested_market_side(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.requested_market_side, range, value, display)

  return offset + length, value
end

-- Size: Requested Size
size_of.requested_size = 8

-- Display: Requested Size
display.requested_size = function(value)
  return "Requested Size: "..value
end

-- Dissect: Requested Size
dissect.requested_size = function(buffer, offset, packet, parent)
  local length = size_of.requested_size
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.requested_size(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.requested_size, range, value, display)

  return offset + length, value
end

-- Calculate size of: Swap Future Rfq Message
size_of.swap_future_rfq_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id_a_1

  index = index + size_of.root_symbol_x_6

  index = index + size_of.expiry_month

  index = index + size_of.expiry_year

  index = index + size_of.expiry_day

  index = index + size_of.tenor

  index = index + size_of.fixed_rate

  index = index + size_of.fixed_rate_fraction_indicator

  index = index + size_of.requested_size

  index = index + size_of.requested_market_side

  return index
end

-- Display: Swap Future Rfq Message
display.swap_future_rfq_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Swap Future Rfq Message
dissect.swap_future_rfq_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: 1 Byte Ascii String
  index, exchange_id_a_1 = dissect.exchange_id_a_1(buffer, index, packet, parent)

  -- Root Symbol X 6: 6 Byte Ascii String
  index, root_symbol_x_6 = dissect.root_symbol_x_6(buffer, index, packet, parent)

  -- Expiry Month: 1 Byte Ascii String
  index, expiry_month = dissect.expiry_month(buffer, index, packet, parent)

  -- Expiry Year: 2 Byte Ascii String
  index, expiry_year = dissect.expiry_year(buffer, index, packet, parent)

  -- Expiry Day: 2 Byte Ascii String
  index, expiry_day = dissect.expiry_day(buffer, index, packet, parent)

  -- Tenor: 2 Byte Ascii String
  index, tenor = dissect.tenor(buffer, index, packet, parent)

  -- Fixed Rate: 5 Byte Ascii String
  index, fixed_rate = dissect.fixed_rate(buffer, index, packet, parent)

  -- Fixed Rate Fraction Indicator: 1 Byte Ascii String
  index, fixed_rate_fraction_indicator = dissect.fixed_rate_fraction_indicator(buffer, index, packet, parent)

  -- Requested Size: 8 Byte Ascii String
  index, requested_size = dissect.requested_size(buffer, index, packet, parent)

  -- Requested Market Side: 1 Byte Ascii String Enum with 3 values
  index, requested_market_side = dissect.requested_market_side(buffer, index, packet, parent)

  return index
end

-- Dissect: Swap Future Rfq Message
dissect.swap_future_rfq_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.swap_future_rfq_message then
    local length = size_of.swap_future_rfq_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.swap_future_rfq_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.swap_future_rfq_message, range, display)
  end

  return dissect.swap_future_rfq_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Strategy Rfq Message
size_of.strategy_rfq_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id_a_1

  index = index + size_of.symbol

  index = index + size_of.requested_size

  index = index + size_of.requested_market_side

  return index
end

-- Display: Strategy Rfq Message
display.strategy_rfq_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Strategy Rfq Message
dissect.strategy_rfq_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: 1 Byte Ascii String
  index, exchange_id_a_1 = dissect.exchange_id_a_1(buffer, index, packet, parent)

  -- Symbol: 30 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Requested Size: 8 Byte Ascii String
  index, requested_size = dissect.requested_size(buffer, index, packet, parent)

  -- Requested Market Side: 1 Byte Ascii String Enum with 3 values
  index, requested_market_side = dissect.requested_market_side(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Rfq Message
dissect.strategy_rfq_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.strategy_rfq_message then
    local length = size_of.strategy_rfq_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.strategy_rfq_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_rfq_message, range, display)
  end

  return dissect.strategy_rfq_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Futures Rfq Message
size_of.futures_rfq_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id_a_1

  index = index + size_of.root_symbol_a_6

  index = index + size_of.delivery_month

  index = index + size_of.delivery_year_n_2

  index = index + size_of.delivery_day

  index = index + size_of.requested_size

  index = index + size_of.requested_market_side

  return index
end

-- Display: Futures Rfq Message
display.futures_rfq_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Futures Rfq Message
dissect.futures_rfq_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: 1 Byte Ascii String
  index, exchange_id_a_1 = dissect.exchange_id_a_1(buffer, index, packet, parent)

  -- Root Symbol A 6: 6 Byte Ascii String
  index, root_symbol_a_6 = dissect.root_symbol_a_6(buffer, index, packet, parent)

  -- Delivery Month: 1 Byte Ascii String
  index, delivery_month = dissect.delivery_month(buffer, index, packet, parent)

  -- Delivery Year N 2: 2 Byte Ascii String
  index, delivery_year_n_2 = dissect.delivery_year_n_2(buffer, index, packet, parent)

  -- Delivery Day: 2 Byte Ascii String
  index, delivery_day = dissect.delivery_day(buffer, index, packet, parent)

  -- Requested Size: 8 Byte Ascii String
  index, requested_size = dissect.requested_size(buffer, index, packet, parent)

  -- Requested Market Side: 1 Byte Ascii String Enum with 3 values
  index, requested_market_side = dissect.requested_market_side(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Rfq Message
dissect.futures_rfq_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.futures_rfq_message then
    local length = size_of.futures_rfq_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.futures_rfq_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.futures_rfq_message, range, display)
  end

  return dissect.futures_rfq_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Future Options Rfq Message
size_of.future_options_rfq_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_i_d

  index = index + size_of.root_symbol_a_6

  index = index + size_of.contract_month_code

  index = index + size_of.expiry_year

  index = index + size_of.expiry_day

  index = index + size_of.call_put_code

  index = index + size_of.strike_price_n_7

  index = index + size_of.strike_price_fraction_indicator

  index = index + size_of.requested_size

  index = index + size_of.requested_market_side

  return index
end

-- Display: Future Options Rfq Message
display.future_options_rfq_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Future Options Rfq Message
dissect.future_options_rfq_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange I D: 1 Byte Ascii String
  index, exchange_i_d = dissect.exchange_i_d(buffer, index, packet, parent)

  -- Root Symbol A 6: 6 Byte Ascii String
  index, root_symbol_a_6 = dissect.root_symbol_a_6(buffer, index, packet, parent)

  -- Contract Month Code: 1 Byte Ascii String
  index, contract_month_code = dissect.contract_month_code(buffer, index, packet, parent)

  -- Expiry Year: 2 Byte Ascii String
  index, expiry_year = dissect.expiry_year(buffer, index, packet, parent)

  -- Expiry Day: 2 Byte Ascii String
  index, expiry_day = dissect.expiry_day(buffer, index, packet, parent)

  -- Call Put Code: 1 Byte Ascii String Enum with 2 values
  index, call_put_code = dissect.call_put_code(buffer, index, packet, parent)

  -- Strike Price N 7: 7 Byte Ascii String
  index, strike_price_n_7 = dissect.strike_price_n_7(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: 1 Byte Ascii String
  index, strike_price_fraction_indicator = dissect.strike_price_fraction_indicator(buffer, index, packet, parent)

  -- Requested Size: 8 Byte Ascii String
  index, requested_size = dissect.requested_size(buffer, index, packet, parent)

  -- Requested Market Side: 1 Byte Ascii String Enum with 3 values
  index, requested_market_side = dissect.requested_market_side(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Options Rfq Message
dissect.future_options_rfq_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.future_options_rfq_message then
    local length = size_of.future_options_rfq_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.future_options_rfq_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.future_options_rfq_message, range, display)
  end

  return dissect.future_options_rfq_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Option Rfq Message
size_of.option_rfq_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_i_d

  index = index + size_of.root_symbol_x_6

  index = index + size_of.expiry_month

  index = index + size_of.filler_a_1

  index = index + size_of.strike_price_n_7

  index = index + size_of.strike_price_fraction_indicator

  index = index + size_of.expiry_year

  index = index + size_of.expiry_day

  index = index + size_of.requested_size

  index = index + size_of.requested_market_side

  return index
end

-- Display: Option Rfq Message
display.option_rfq_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Option Rfq Message
dissect.option_rfq_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange I D: 1 Byte Ascii String
  index, exchange_i_d = dissect.exchange_i_d(buffer, index, packet, parent)

  -- Root Symbol X 6: 6 Byte Ascii String
  index, root_symbol_x_6 = dissect.root_symbol_x_6(buffer, index, packet, parent)

  -- Expiry Month: 1 Byte Ascii String
  index, expiry_month = dissect.expiry_month(buffer, index, packet, parent)

  -- Filler A 1: 1 Byte Ascii String
  index, filler_a_1 = dissect.filler_a_1(buffer, index, packet, parent)

  -- Strike Price N 7: 7 Byte Ascii String
  index, strike_price_n_7 = dissect.strike_price_n_7(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: 1 Byte Ascii String
  index, strike_price_fraction_indicator = dissect.strike_price_fraction_indicator(buffer, index, packet, parent)

  -- Expiry Year: 2 Byte Ascii String
  index, expiry_year = dissect.expiry_year(buffer, index, packet, parent)

  -- Expiry Day: 2 Byte Ascii String
  index, expiry_day = dissect.expiry_day(buffer, index, packet, parent)

  -- Requested Size: 8 Byte Ascii String
  index, requested_size = dissect.requested_size(buffer, index, packet, parent)

  -- Requested Market Side: 1 Byte Ascii String Enum with 3 values
  index, requested_market_side = dissect.requested_market_side(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Rfq Message
dissect.option_rfq_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.option_rfq_message then
    local length = size_of.option_rfq_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.option_rfq_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.option_rfq_message, range, display)
  end

  return dissect.option_rfq_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Swap Future Trade Message
size_of.swap_future_trade_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_i_d

  index = index + size_of.root_symbol_x_6

  index = index + size_of.expiry_month

  index = index + size_of.expiry_year

  index = index + size_of.expiry_day

  index = index + size_of.tenor

  index = index + size_of.fixed_rate

  index = index + size_of.fixed_rate_fraction_indicator

  index = index + size_of.trade_volume

  index = index + size_of.trade_price

  index = index + size_of.trade_price_fraction_indicator

  index = index + size_of.net_change_sign_x_1

  index = index + size_of.net_change

  index = index + size_of.net_change_fraction_indicator_x_1

  index = index + size_of.timestamp

  index = index + size_of.price_indicator_marker_x_1

  index = index + size_of.trade_number

  return index
end

-- Display: Swap Future Trade Message
display.swap_future_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Swap Future Trade Message
dissect.swap_future_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange I D: 1 Byte Ascii String
  index, exchange_i_d = dissect.exchange_i_d(buffer, index, packet, parent)

  -- Root Symbol X 6: 6 Byte Ascii String
  index, root_symbol_x_6 = dissect.root_symbol_x_6(buffer, index, packet, parent)

  -- Expiry Month: 1 Byte Ascii String
  index, expiry_month = dissect.expiry_month(buffer, index, packet, parent)

  -- Expiry Year: 2 Byte Ascii String
  index, expiry_year = dissect.expiry_year(buffer, index, packet, parent)

  -- Expiry Day: 2 Byte Ascii String
  index, expiry_day = dissect.expiry_day(buffer, index, packet, parent)

  -- Tenor: 2 Byte Ascii String
  index, tenor = dissect.tenor(buffer, index, packet, parent)

  -- Fixed Rate: 5 Byte Ascii String
  index, fixed_rate = dissect.fixed_rate(buffer, index, packet, parent)

  -- Fixed Rate Fraction Indicator: 1 Byte Ascii String
  index, fixed_rate_fraction_indicator = dissect.fixed_rate_fraction_indicator(buffer, index, packet, parent)

  -- Trade Volume: 8 Byte Ascii String
  index, trade_volume = dissect.trade_volume(buffer, index, packet, parent)

  -- Trade Price: 6 Byte Ascii String
  index, trade_price = dissect.trade_price(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: 1 Byte Ascii String
  index, trade_price_fraction_indicator = dissect.trade_price_fraction_indicator(buffer, index, packet, parent)

  -- Net Change Sign X 1: 1 Byte Ascii String
  index, net_change_sign_x_1 = dissect.net_change_sign_x_1(buffer, index, packet, parent)

  -- Net Change: 6 Byte Ascii String
  index, net_change = dissect.net_change(buffer, index, packet, parent)

  -- Net Change Fraction Indicator X 1: 1 Byte Ascii String
  index, net_change_fraction_indicator_x_1 = dissect.net_change_fraction_indicator_x_1(buffer, index, packet, parent)

  -- Timestamp: 9 Byte Ascii String
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Price Indicator Marker X 1: 1 Byte Ascii String
  index, price_indicator_marker_x_1 = dissect.price_indicator_marker_x_1(buffer, index, packet, parent)

  -- Trade Number: 8 Byte Ascii String
  index, trade_number = dissect.trade_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Swap Future Trade Message
dissect.swap_future_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.swap_future_trade_message then
    local length = size_of.swap_future_trade_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.swap_future_trade_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.swap_future_trade_message, range, display)
  end

  return dissect.swap_future_trade_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Strategy Trade Message
size_of.strategy_trade_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_i_d

  index = index + size_of.symbol

  index = index + size_of.volume

  index = index + size_of.trade_price_sign

  index = index + size_of.trade_price

  index = index + size_of.trade_price_fraction_indicator

  index = index + size_of.net_change_sign_x_1

  index = index + size_of.net_change

  index = index + size_of.net_change_fraction_indicator_x_1

  index = index + size_of.filler_n_6

  index = index + size_of.timestamp

  index = index + size_of.price_indicator_marker_x_1

  index = index + size_of.trade_number

  return index
end

-- Display: Strategy Trade Message
display.strategy_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Strategy Trade Message
dissect.strategy_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange I D: 1 Byte Ascii String
  index, exchange_i_d = dissect.exchange_i_d(buffer, index, packet, parent)

  -- Symbol: 30 Byte Ascii String
  index, symbol = dissect.symbol(buffer, index, packet, parent)

  -- Volume: 8 Byte Ascii String
  index, volume = dissect.volume(buffer, index, packet, parent)

  -- Trade Price Sign: 1 Byte Ascii String
  index, trade_price_sign = dissect.trade_price_sign(buffer, index, packet, parent)

  -- Trade Price: 6 Byte Ascii String
  index, trade_price = dissect.trade_price(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: 1 Byte Ascii String
  index, trade_price_fraction_indicator = dissect.trade_price_fraction_indicator(buffer, index, packet, parent)

  -- Net Change Sign X 1: 1 Byte Ascii String
  index, net_change_sign_x_1 = dissect.net_change_sign_x_1(buffer, index, packet, parent)

  -- Net Change: 6 Byte Ascii String
  index, net_change = dissect.net_change(buffer, index, packet, parent)

  -- Net Change Fraction Indicator X 1: 1 Byte Ascii String
  index, net_change_fraction_indicator_x_1 = dissect.net_change_fraction_indicator_x_1(buffer, index, packet, parent)

  -- Filler N 6: 6 Byte Ascii String
  index, filler_n_6 = dissect.filler_n_6(buffer, index, packet, parent)

  -- Timestamp: 9 Byte Ascii String
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Price Indicator Marker X 1: 1 Byte Ascii String
  index, price_indicator_marker_x_1 = dissect.price_indicator_marker_x_1(buffer, index, packet, parent)

  -- Trade Number: 8 Byte Ascii String
  index, trade_number = dissect.trade_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Trade Message
dissect.strategy_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.strategy_trade_message then
    local length = size_of.strategy_trade_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.strategy_trade_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.strategy_trade_message, range, display)
  end

  return dissect.strategy_trade_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Futures Trade Message
size_of.futures_trade_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_i_d

  index = index + size_of.root_symbol_a_6

  index = index + size_of.delivery_month

  index = index + size_of.delivery_year_n_2

  index = index + size_of.delivery_day

  index = index + size_of.volume

  index = index + size_of.trade_price

  index = index + size_of.trade_price_fraction_indicator

  index = index + size_of.net_change_sign_x_1

  index = index + size_of.net_change

  index = index + size_of.net_change_fraction_indicator_x_1

  index = index + size_of.filler_n_6

  index = index + size_of.timestamp

  index = index + size_of.price_indicator_marker_x_1

  index = index + size_of.trade_number

  return index
end

-- Display: Futures Trade Message
display.futures_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Futures Trade Message
dissect.futures_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange I D: 1 Byte Ascii String
  index, exchange_i_d = dissect.exchange_i_d(buffer, index, packet, parent)

  -- Root Symbol A 6: 6 Byte Ascii String
  index, root_symbol_a_6 = dissect.root_symbol_a_6(buffer, index, packet, parent)

  -- Delivery Month: 1 Byte Ascii String
  index, delivery_month = dissect.delivery_month(buffer, index, packet, parent)

  -- Delivery Year N 2: 2 Byte Ascii String
  index, delivery_year_n_2 = dissect.delivery_year_n_2(buffer, index, packet, parent)

  -- Delivery Day: 2 Byte Ascii String
  index, delivery_day = dissect.delivery_day(buffer, index, packet, parent)

  -- Volume: 8 Byte Ascii String
  index, volume = dissect.volume(buffer, index, packet, parent)

  -- Trade Price: 6 Byte Ascii String
  index, trade_price = dissect.trade_price(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: 1 Byte Ascii String
  index, trade_price_fraction_indicator = dissect.trade_price_fraction_indicator(buffer, index, packet, parent)

  -- Net Change Sign X 1: 1 Byte Ascii String
  index, net_change_sign_x_1 = dissect.net_change_sign_x_1(buffer, index, packet, parent)

  -- Net Change: 6 Byte Ascii String
  index, net_change = dissect.net_change(buffer, index, packet, parent)

  -- Net Change Fraction Indicator X 1: 1 Byte Ascii String
  index, net_change_fraction_indicator_x_1 = dissect.net_change_fraction_indicator_x_1(buffer, index, packet, parent)

  -- Filler N 6: 6 Byte Ascii String
  index, filler_n_6 = dissect.filler_n_6(buffer, index, packet, parent)

  -- Timestamp: 9 Byte Ascii String
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Price Indicator Marker X 1: 1 Byte Ascii String
  index, price_indicator_marker_x_1 = dissect.price_indicator_marker_x_1(buffer, index, packet, parent)

  -- Trade Number: 8 Byte Ascii String
  index, trade_number = dissect.trade_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Futures Trade Message
dissect.futures_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.futures_trade_message then
    local length = size_of.futures_trade_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.futures_trade_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.futures_trade_message, range, display)
  end

  return dissect.futures_trade_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Future Options Trade Message
size_of.future_options_trade_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id_a_1

  index = index + size_of.root_symbol_a_6

  index = index + size_of.contract_month_code

  index = index + size_of.expiry_year

  index = index + size_of.expiry_day

  index = index + size_of.call_put_code

  index = index + size_of.strike_price_n_7

  index = index + size_of.strike_price_fraction_indicator

  index = index + size_of.volume

  index = index + size_of.trade_price

  index = index + size_of.trade_price_fraction_indicator

  index = index + size_of.price_indicator_marker_a_1

  index = index + size_of.net_change_sign_a_1

  index = index + size_of.net_change

  index = index + size_of.net_change_fraction_indicator_a_1

  index = index + size_of.filler_n_6

  index = index + size_of.timestamp

  index = index + size_of.open_interest

  index = index + size_of.filler_x_2

  index = index + size_of.trade_number

  return index
end

-- Display: Future Options Trade Message
display.future_options_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Future Options Trade Message
dissect.future_options_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: 1 Byte Ascii String
  index, exchange_id_a_1 = dissect.exchange_id_a_1(buffer, index, packet, parent)

  -- Root Symbol A 6: 6 Byte Ascii String
  index, root_symbol_a_6 = dissect.root_symbol_a_6(buffer, index, packet, parent)

  -- Contract Month Code: 1 Byte Ascii String
  index, contract_month_code = dissect.contract_month_code(buffer, index, packet, parent)

  -- Expiry Year: 2 Byte Ascii String
  index, expiry_year = dissect.expiry_year(buffer, index, packet, parent)

  -- Expiry Day: 2 Byte Ascii String
  index, expiry_day = dissect.expiry_day(buffer, index, packet, parent)

  -- Call Put Code: 1 Byte Ascii String Enum with 2 values
  index, call_put_code = dissect.call_put_code(buffer, index, packet, parent)

  -- Strike Price N 7: 7 Byte Ascii String
  index, strike_price_n_7 = dissect.strike_price_n_7(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: 1 Byte Ascii String
  index, strike_price_fraction_indicator = dissect.strike_price_fraction_indicator(buffer, index, packet, parent)

  -- Volume: 8 Byte Ascii String
  index, volume = dissect.volume(buffer, index, packet, parent)

  -- Trade Price: 6 Byte Ascii String
  index, trade_price = dissect.trade_price(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: 1 Byte Ascii String
  index, trade_price_fraction_indicator = dissect.trade_price_fraction_indicator(buffer, index, packet, parent)

  -- Price Indicator Marker A 1: 1 Byte Ascii String
  index, price_indicator_marker_a_1 = dissect.price_indicator_marker_a_1(buffer, index, packet, parent)

  -- Net Change Sign A 1: 1 Byte Ascii String
  index, net_change_sign_a_1 = dissect.net_change_sign_a_1(buffer, index, packet, parent)

  -- Net Change: 6 Byte Ascii String
  index, net_change = dissect.net_change(buffer, index, packet, parent)

  -- Net Change Fraction Indicator A 1: 1 Byte Ascii String
  index, net_change_fraction_indicator_a_1 = dissect.net_change_fraction_indicator_a_1(buffer, index, packet, parent)

  -- Filler N 6: 6 Byte Ascii String
  index, filler_n_6 = dissect.filler_n_6(buffer, index, packet, parent)

  -- Timestamp: 9 Byte Ascii String
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Open Interest: 7 Byte Ascii String
  index, open_interest = dissect.open_interest(buffer, index, packet, parent)

  -- Filler X 2: 2 Byte Ascii String
  index, filler_x_2 = dissect.filler_x_2(buffer, index, packet, parent)

  -- Trade Number: 8 Byte Ascii String
  index, trade_number = dissect.trade_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Future Options Trade Message
dissect.future_options_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.future_options_trade_message then
    local length = size_of.future_options_trade_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.future_options_trade_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.future_options_trade_message, range, display)
  end

  return dissect.future_options_trade_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Option Trade Message
size_of.option_trade_message = function(buffer, offset)
  local index = 0

  index = index + size_of.exchange_id_a_1

  index = index + size_of.root_symbol_x_6

  index = index + size_of.expiry_month

  index = index + size_of.filler_a_1

  index = index + size_of.strike_price_n_7

  index = index + size_of.strike_price_fraction_indicator

  index = index + size_of.expiry_year

  index = index + size_of.expiry_day

  index = index + size_of.volume

  index = index + size_of.trade_price

  index = index + size_of.trade_price_fraction_indicator

  index = index + size_of.net_change_sign_a_1

  index = index + size_of.net_change

  index = index + size_of.net_change_fraction_indicator_x_1

  index = index + size_of.filler_n_6

  index = index + size_of.timestamp

  index = index + size_of.open_interest

  index = index + size_of.filler_x_1

  index = index + size_of.price_indicator_marker_a_1

  index = index + size_of.trade_number

  return index
end

-- Display: Option Trade Message
display.option_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Option Trade Message
dissect.option_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Exchange Id A 1: 1 Byte Ascii String
  index, exchange_id_a_1 = dissect.exchange_id_a_1(buffer, index, packet, parent)

  -- Root Symbol X 6: 6 Byte Ascii String
  index, root_symbol_x_6 = dissect.root_symbol_x_6(buffer, index, packet, parent)

  -- Expiry Month: 1 Byte Ascii String
  index, expiry_month = dissect.expiry_month(buffer, index, packet, parent)

  -- Filler A 1: 1 Byte Ascii String
  index, filler_a_1 = dissect.filler_a_1(buffer, index, packet, parent)

  -- Strike Price N 7: 7 Byte Ascii String
  index, strike_price_n_7 = dissect.strike_price_n_7(buffer, index, packet, parent)

  -- Strike Price Fraction Indicator: 1 Byte Ascii String
  index, strike_price_fraction_indicator = dissect.strike_price_fraction_indicator(buffer, index, packet, parent)

  -- Expiry Year: 2 Byte Ascii String
  index, expiry_year = dissect.expiry_year(buffer, index, packet, parent)

  -- Expiry Day: 2 Byte Ascii String
  index, expiry_day = dissect.expiry_day(buffer, index, packet, parent)

  -- Volume: 8 Byte Ascii String
  index, volume = dissect.volume(buffer, index, packet, parent)

  -- Trade Price: 6 Byte Ascii String
  index, trade_price = dissect.trade_price(buffer, index, packet, parent)

  -- Trade Price Fraction Indicator: 1 Byte Ascii String
  index, trade_price_fraction_indicator = dissect.trade_price_fraction_indicator(buffer, index, packet, parent)

  -- Net Change Sign A 1: 1 Byte Ascii String
  index, net_change_sign_a_1 = dissect.net_change_sign_a_1(buffer, index, packet, parent)

  -- Net Change: 6 Byte Ascii String
  index, net_change = dissect.net_change(buffer, index, packet, parent)

  -- Net Change Fraction Indicator X 1: 1 Byte Ascii String
  index, net_change_fraction_indicator_x_1 = dissect.net_change_fraction_indicator_x_1(buffer, index, packet, parent)

  -- Filler N 6: 6 Byte Ascii String
  index, filler_n_6 = dissect.filler_n_6(buffer, index, packet, parent)

  -- Timestamp: 9 Byte Ascii String
  index, timestamp = dissect.timestamp(buffer, index, packet, parent)

  -- Open Interest: 7 Byte Ascii String
  index, open_interest = dissect.open_interest(buffer, index, packet, parent)

  -- Filler X 1: 1 Byte Ascii String
  index, filler_x_1 = dissect.filler_x_1(buffer, index, packet, parent)

  -- Price Indicator Marker A 1: 1 Byte Ascii String
  index, price_indicator_marker_a_1 = dissect.price_indicator_marker_a_1(buffer, index, packet, parent)

  -- Trade Number: 8 Byte Ascii String
  index, trade_number = dissect.trade_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Trade Message
dissect.option_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.option_trade_message then
    local length = size_of.option_trade_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.option_trade_message(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.option_trade_message, range, display)
  end

  return dissect.option_trade_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Message Body
size_of.message_body = function(buffer, offset, message_type)
  -- Size of Option Trade Message
  if message_type == "C" then
    return size_of.option_trade_message(buffer, offset)
  end
  -- Size of Future Options Trade Message
  if message_type == "CB" then
    return size_of.future_options_trade_message(buffer, offset)
  end
  -- Size of Futures Trade Message
  if message_type == "CF" then
    return size_of.futures_trade_message(buffer, offset)
  end
  -- Size of Strategy Trade Message
  if message_type == "CS" then
    return size_of.strategy_trade_message(buffer, offset)
  end
  -- Size of Swap Future Trade Message
  if message_type == "CW" then
    return size_of.swap_future_trade_message(buffer, offset)
  end
  -- Size of Option Rfq Message
  if message_type == "D" then
    return size_of.option_rfq_message(buffer, offset)
  end
  -- Size of Future Options Rfq Message
  if message_type == "DB" then
    return size_of.future_options_rfq_message(buffer, offset)
  end
  -- Size of Futures Rfq Message
  if message_type == "DF" then
    return size_of.futures_rfq_message(buffer, offset)
  end
  -- Size of Strategy Rfq Message
  if message_type == "DS" then
    return size_of.strategy_rfq_message(buffer, offset)
  end
  -- Size of Swap Future Rfq Message
  if message_type == "DW" then
    return size_of.swap_future_rfq_message(buffer, offset)
  end
  -- Size of Instrument Schedule Notice Option Message
  if message_type == "E" then
    return size_of.instrument_schedule_notice_option_message(buffer, offset)
  end
  -- Size of Instrument Schedule Notice Futures Option Message
  if message_type == "EB" then
    return size_of.instrument_schedule_notice_futures_option_message(buffer, offset)
  end
  -- Size of Instrument Schedule Notice Future Message
  if message_type == "EF" then
    return size_of.instrument_schedule_notice_future_message(buffer, offset)
  end
  -- Size of Instrument Schedule Notice Strategy Message
  if message_type == "ES" then
    return size_of.instrument_schedule_notice_strategy_message(buffer, offset)
  end
  -- Size of Instrument Schedule Notice Swap Future Message
  if message_type == "EW" then
    return size_of.instrument_schedule_notice_swap_future_message(buffer, offset)
  end
  -- Size of Option Quote Message
  if message_type == "F" then
    return size_of.option_quote_message(buffer, offset)
  end
  -- Size of Future Options Quote Message
  if message_type == "FB" then
    return size_of.future_options_quote_message(buffer, offset)
  end
  -- Size of Futures Quote Message
  if message_type == "FF" then
    return size_of.futures_quote_message(buffer, offset)
  end
  -- Size of Strategy Quote Message
  if message_type == "FS" then
    return size_of.strategy_quote_message(buffer, offset)
  end
  -- Size of Swap Future Quote Message
  if message_type == "FW" then
    return size_of.swap_future_quote_message(buffer, offset)
  end
  -- Size of Option Market Depth Message
  if message_type == "H" then
    return size_of.option_market_depth_message(buffer, offset)
  end
  -- Size of Future Options Market Depth Message
  if message_type == "HB" then
    return size_of.future_options_market_depth_message(buffer, offset)
  end
  -- Size of Futures Market Depth Message
  if message_type == "HF" then
    return size_of.futures_market_depth_message(buffer, offset)
  end
  -- Size of Strategy Market Depth Message
  if message_type == "HS" then
    return size_of.strategy_market_depth_message(buffer, offset)
  end
  -- Size of Swap Future Market Depth Message
  if message_type == "HW" then
    return size_of.swap_future_market_depth_message(buffer, offset)
  end
  -- Size of Option Trade Cancellation Message
  if message_type == "I" then
    return size_of.option_trade_cancellation_message(buffer, offset)
  end
  -- Size of Future Options Trade Cancellation Message
  if message_type == "IB" then
    return size_of.future_options_trade_cancellation_message(buffer, offset)
  end
  -- Size of Futures Trade Cancellation Message
  if message_type == "IF" then
    return size_of.futures_trade_cancellation_message(buffer, offset)
  end
  -- Size of Strategy Trade Cancellation Message
  if message_type == "IS" then
    return size_of.strategy_trade_cancellation_message(buffer, offset)
  end
  -- Size of Swap Future Trade Cancellation Message
  if message_type == "IW" then
    return size_of.swap_future_trade_cancellation_message(buffer, offset)
  end
  -- Size of Option Instrument Keys Message
  if message_type == "J" then
    return size_of.option_instrument_keys_message(buffer, offset)
  end
  -- Size of Future Options Instrument Keys Message
  if message_type == "JB" then
    return size_of.future_options_instrument_keys_message(buffer, offset)
  end
  -- Size of Underlying Instrument Keys Message
  if message_type == "JE" then
    return size_of.underlying_instrument_keys_message(buffer, offset)
  end
  -- Size of Futures Instrument Keys Message
  if message_type == "JF" then
    return size_of.futures_instrument_keys_message(buffer, offset)
  end
  -- Size of Strategy Instrument Keys Message
  if message_type == "JS" then
    return size_of.strategy_instrument_keys_message(buffer, offset)
  end
  -- Size of Swap Future Instrument Keys Message
  if message_type == "JW" then
    return size_of.swap_future_instrument_keys_message(buffer, offset)
  end
  -- Size of Option Summary Message
  if message_type == "N" then
    return size_of.option_summary_message(buffer, offset)
  end
  -- Size of Future Options Summary Message
  if message_type == "NB" then
    return size_of.future_options_summary_message(buffer, offset)
  end
  -- Size of Futures Summary Message
  if message_type == "NF" then
    return size_of.futures_summary_message(buffer, offset)
  end
  -- Size of Strategy Summary Message
  if message_type == "NS" then
    return size_of.strategy_summary_message(buffer, offset)
  end
  -- Size of Swap Future Summary Message
  if message_type == "NW" then
    return size_of.swap_future_summary_message(buffer, offset)
  end
  -- Size of Beginning Of Options Summary Message
  if message_type == "Q" then
    return size_of.beginning_of_options_summary_message(buffer, offset)
  end
  -- Size of Beginning Of Future Options Summary Message
  if message_type == "QB" then
    return size_of.beginning_of_future_options_summary_message(buffer, offset)
  end
  -- Size of Beginning Of Futures Summary Message
  if message_type == "QF" then
    return size_of.beginning_of_futures_summary_message(buffer, offset)
  end
  -- Size of Beginning Of Strategy Summary Message
  if message_type == "QS" then
    return size_of.beginning_of_strategy_summary_message(buffer, offset)
  end
  -- Size of Swap Future Beginning Of Summary Message
  if message_type == "QW" then
    return size_of.swap_future_beginning_of_summary_message(buffer, offset)
  end
  -- Size of Option Trade Correction Message
  if message_type == "X" then
    return size_of.option_trade_correction_message(buffer, offset)
  end
  -- Size of Future Options Trade Correction Message
  if message_type == "XB" then
    return size_of.future_options_trade_correction_message(buffer, offset)
  end
  -- Size of Futures Trade Correction Message
  if message_type == "XF" then
    return size_of.futures_trade_correction_message(buffer, offset)
  end
  -- Size of Strategy Trade Correction Message
  if message_type == "XS" then
    return size_of.strategy_trade_correction_message(buffer, offset)
  end
  -- Size of Swap Future Trade Correction Message
  if message_type == "XW" then
    return size_of.swap_future_trade_correction_message(buffer, offset)
  end
  -- Size of Group Status Message
  if message_type == "GR" then
    return size_of.group_status_message(buffer, offset)
  end
  -- Size of Strategies Message
  if message_type == "GS" then
    return size_of.strategies_message(buffer, offset)
  end
  -- Size of Bulletins Message
  if message_type == "L" then
    return size_of.bulletins_message(buffer, offset)
  end
  -- Size of End Of Sales Message
  if message_type == "S" then
    return size_of.end_of_sales_message(buffer, offset)
  end
  -- Size of Tick Table Message
  if message_type == "TT" then
    return size_of.tick_table_message(buffer, offset)
  end
  -- Size of End Of Transmission Message
  if message_type == "U" then
    return size_of.end_of_transmission_message(buffer, offset)
  end
  -- Size of Circuit Assurance Message
  if message_type == "V" then
    return size_of.circuit_assurance_message(buffer, offset)
  end

  return 0
end

-- Display: Message Body
display.message_body = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Message Body
dissect.message_body_branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Option Trade Message
  if message_type == "C" then
    return dissect.option_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Future Options Trade Message
  if message_type == "CB" then
    return dissect.future_options_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Futures Trade Message
  if message_type == "CF" then
    return dissect.futures_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Trade Message
  if message_type == "CS" then
    return dissect.strategy_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Swap Future Trade Message
  if message_type == "CW" then
    return dissect.swap_future_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Option Rfq Message
  if message_type == "D" then
    return dissect.option_rfq_message(buffer, offset, packet, parent)
  end
  -- Dissect Future Options Rfq Message
  if message_type == "DB" then
    return dissect.future_options_rfq_message(buffer, offset, packet, parent)
  end
  -- Dissect Futures Rfq Message
  if message_type == "DF" then
    return dissect.futures_rfq_message(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Rfq Message
  if message_type == "DS" then
    return dissect.strategy_rfq_message(buffer, offset, packet, parent)
  end
  -- Dissect Swap Future Rfq Message
  if message_type == "DW" then
    return dissect.swap_future_rfq_message(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Schedule Notice Option Message
  if message_type == "E" then
    return dissect.instrument_schedule_notice_option_message(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Schedule Notice Futures Option Message
  if message_type == "EB" then
    return dissect.instrument_schedule_notice_futures_option_message(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Schedule Notice Future Message
  if message_type == "EF" then
    return dissect.instrument_schedule_notice_future_message(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Schedule Notice Strategy Message
  if message_type == "ES" then
    return dissect.instrument_schedule_notice_strategy_message(buffer, offset, packet, parent)
  end
  -- Dissect Instrument Schedule Notice Swap Future Message
  if message_type == "EW" then
    return dissect.instrument_schedule_notice_swap_future_message(buffer, offset, packet, parent)
  end
  -- Dissect Option Quote Message
  if message_type == "F" then
    return dissect.option_quote_message(buffer, offset, packet, parent)
  end
  -- Dissect Future Options Quote Message
  if message_type == "FB" then
    return dissect.future_options_quote_message(buffer, offset, packet, parent)
  end
  -- Dissect Futures Quote Message
  if message_type == "FF" then
    return dissect.futures_quote_message(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Quote Message
  if message_type == "FS" then
    return dissect.strategy_quote_message(buffer, offset, packet, parent)
  end
  -- Dissect Swap Future Quote Message
  if message_type == "FW" then
    return dissect.swap_future_quote_message(buffer, offset, packet, parent)
  end
  -- Dissect Option Market Depth Message
  if message_type == "H" then
    return dissect.option_market_depth_message(buffer, offset, packet, parent)
  end
  -- Dissect Future Options Market Depth Message
  if message_type == "HB" then
    return dissect.future_options_market_depth_message(buffer, offset, packet, parent)
  end
  -- Dissect Futures Market Depth Message
  if message_type == "HF" then
    return dissect.futures_market_depth_message(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Market Depth Message
  if message_type == "HS" then
    return dissect.strategy_market_depth_message(buffer, offset, packet, parent)
  end
  -- Dissect Swap Future Market Depth Message
  if message_type == "HW" then
    return dissect.swap_future_market_depth_message(buffer, offset, packet, parent)
  end
  -- Dissect Option Trade Cancellation Message
  if message_type == "I" then
    return dissect.option_trade_cancellation_message(buffer, offset, packet, parent)
  end
  -- Dissect Future Options Trade Cancellation Message
  if message_type == "IB" then
    return dissect.future_options_trade_cancellation_message(buffer, offset, packet, parent)
  end
  -- Dissect Futures Trade Cancellation Message
  if message_type == "IF" then
    return dissect.futures_trade_cancellation_message(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Trade Cancellation Message
  if message_type == "IS" then
    return dissect.strategy_trade_cancellation_message(buffer, offset, packet, parent)
  end
  -- Dissect Swap Future Trade Cancellation Message
  if message_type == "IW" then
    return dissect.swap_future_trade_cancellation_message(buffer, offset, packet, parent)
  end
  -- Dissect Option Instrument Keys Message
  if message_type == "J" then
    return dissect.option_instrument_keys_message(buffer, offset, packet, parent)
  end
  -- Dissect Future Options Instrument Keys Message
  if message_type == "JB" then
    return dissect.future_options_instrument_keys_message(buffer, offset, packet, parent)
  end
  -- Dissect Underlying Instrument Keys Message
  if message_type == "JE" then
    return dissect.underlying_instrument_keys_message(buffer, offset, packet, parent)
  end
  -- Dissect Futures Instrument Keys Message
  if message_type == "JF" then
    return dissect.futures_instrument_keys_message(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Instrument Keys Message
  if message_type == "JS" then
    return dissect.strategy_instrument_keys_message(buffer, offset, packet, parent)
  end
  -- Dissect Swap Future Instrument Keys Message
  if message_type == "JW" then
    return dissect.swap_future_instrument_keys_message(buffer, offset, packet, parent)
  end
  -- Dissect Option Summary Message
  if message_type == "N" then
    return dissect.option_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Future Options Summary Message
  if message_type == "NB" then
    return dissect.future_options_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Futures Summary Message
  if message_type == "NF" then
    return dissect.futures_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Summary Message
  if message_type == "NS" then
    return dissect.strategy_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Swap Future Summary Message
  if message_type == "NW" then
    return dissect.swap_future_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Beginning Of Options Summary Message
  if message_type == "Q" then
    return dissect.beginning_of_options_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Beginning Of Future Options Summary Message
  if message_type == "QB" then
    return dissect.beginning_of_future_options_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Beginning Of Futures Summary Message
  if message_type == "QF" then
    return dissect.beginning_of_futures_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Beginning Of Strategy Summary Message
  if message_type == "QS" then
    return dissect.beginning_of_strategy_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Swap Future Beginning Of Summary Message
  if message_type == "QW" then
    return dissect.swap_future_beginning_of_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Option Trade Correction Message
  if message_type == "X" then
    return dissect.option_trade_correction_message(buffer, offset, packet, parent)
  end
  -- Dissect Future Options Trade Correction Message
  if message_type == "XB" then
    return dissect.future_options_trade_correction_message(buffer, offset, packet, parent)
  end
  -- Dissect Futures Trade Correction Message
  if message_type == "XF" then
    return dissect.futures_trade_correction_message(buffer, offset, packet, parent)
  end
  -- Dissect Strategy Trade Correction Message
  if message_type == "XS" then
    return dissect.strategy_trade_correction_message(buffer, offset, packet, parent)
  end
  -- Dissect Swap Future Trade Correction Message
  if message_type == "XW" then
    return dissect.swap_future_trade_correction_message(buffer, offset, packet, parent)
  end
  -- Dissect Group Status Message
  if message_type == "GR" then
    return dissect.group_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Strategies Message
  if message_type == "GS" then
    return dissect.strategies_message(buffer, offset, packet, parent)
  end
  -- Dissect Bulletins Message
  if message_type == "L" then
    return dissect.bulletins_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of Sales Message
  if message_type == "S" then
    return dissect.end_of_sales_message(buffer, offset, packet, parent)
  end
  -- Dissect Tick Table Message
  if message_type == "TT" then
    return dissect.tick_table_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of Transmission Message
  if message_type == "U" then
    return dissect.end_of_transmission_message(buffer, offset, packet, parent)
  end
  -- Dissect Circuit Assurance Message
  if message_type == "V" then
    return dissect.circuit_assurance_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Message Body
dissect.message_body = function(buffer, offset, packet, parent, message_type)
  if not show.message_body then
    return dissect.message_body_branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.message_body(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.message_body(buffer, packet, parent)
  local element = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.message_body, range, display)

  return dissect.message_body_branches(buffer, offset, packet, parent, message_type)
end

-- Size: Message Type
size_of.message_type = 2

-- Display: Message Type
display.message_type = function(value)
  if value == "C" then
    return "Message Type: Option Trade Message (C)"
  end
  if value == "CB" then
    return "Message Type: Future Options Trade Message (CB)"
  end
  if value == "CF" then
    return "Message Type: Futures Trade Message (CF)"
  end
  if value == "CS" then
    return "Message Type: Strategy Trade Message (CS)"
  end
  if value == "CW" then
    return "Message Type: Swap Future Trade Message (CW)"
  end
  if value == "D" then
    return "Message Type: Option Rfq Message (D)"
  end
  if value == "DB" then
    return "Message Type: Future Options Rfq Message (DB)"
  end
  if value == "DF" then
    return "Message Type: Futures Rfq Message (DF)"
  end
  if value == "DS" then
    return "Message Type: Strategy Rfq Message (DS)"
  end
  if value == "DW" then
    return "Message Type: Swap Future Rfq Message (DW)"
  end
  if value == "E" then
    return "Message Type: Instrument Schedule Notice Option Message (E)"
  end
  if value == "EB" then
    return "Message Type: Instrument Schedule Notice Futures Option Message (EB)"
  end
  if value == "EF" then
    return "Message Type: Instrument Schedule Notice Future Message (EF)"
  end
  if value == "ES" then
    return "Message Type: Instrument Schedule Notice Strategy Message (ES)"
  end
  if value == "EW" then
    return "Message Type: Instrument Schedule Notice Swap Future Message (EW)"
  end
  if value == "F" then
    return "Message Type: Option Quote Message (F)"
  end
  if value == "FB" then
    return "Message Type: Future Options Quote Message (FB)"
  end
  if value == "FF" then
    return "Message Type: Futures Quote Message (FF)"
  end
  if value == "FS" then
    return "Message Type: Strategy Quote Message (FS)"
  end
  if value == "FW" then
    return "Message Type: Swap Future Quote Message (FW)"
  end
  if value == "H" then
    return "Message Type: Option Market Depth Message (H)"
  end
  if value == "HB" then
    return "Message Type: Future Options Market Depth Message (HB)"
  end
  if value == "HF" then
    return "Message Type: Futures Market Depth Message (HF)"
  end
  if value == "HS" then
    return "Message Type: Strategy Market Depth Message (HS)"
  end
  if value == "HW" then
    return "Message Type: Swap Future Market Depth Message (HW)"
  end
  if value == "I" then
    return "Message Type: Option Trade Cancellation Message (I)"
  end
  if value == "IB" then
    return "Message Type: Future Options Trade Cancellation Message (IB)"
  end
  if value == "IF" then
    return "Message Type: Futures Trade Cancellation Message (IF)"
  end
  if value == "IS" then
    return "Message Type: Strategy Trade Cancellation Message (IS)"
  end
  if value == "IW" then
    return "Message Type: Swap Future Trade Cancellation Message (IW)"
  end
  if value == "J" then
    return "Message Type: Option Instrument Keys Message (J)"
  end
  if value == "JB" then
    return "Message Type: Future Options Instrument Keys Message (JB)"
  end
  if value == "JE" then
    return "Message Type: Underlying Instrument Keys Message (JE)"
  end
  if value == "JF" then
    return "Message Type: Futures Instrument Keys Message (JF)"
  end
  if value == "JS" then
    return "Message Type: Strategy Instrument Keys Message (JS)"
  end
  if value == "JW" then
    return "Message Type: Swap Future Instrument Keys Message (JW)"
  end
  if value == "N" then
    return "Message Type: Option Summary Message (N)"
  end
  if value == "NB" then
    return "Message Type: Future Options Summary Message (NB)"
  end
  if value == "NF" then
    return "Message Type: Futures Summary Message (NF)"
  end
  if value == "NS" then
    return "Message Type: Strategy Summary Message (NS)"
  end
  if value == "NW" then
    return "Message Type: Swap Future Summary Message (NW)"
  end
  if value == "Q" then
    return "Message Type: Beginning Of Options Summary Message (Q)"
  end
  if value == "QB" then
    return "Message Type: Beginning Of Future Options Summary Message (QB)"
  end
  if value == "QF" then
    return "Message Type: Beginning Of Futures Summary Message (QF)"
  end
  if value == "QS" then
    return "Message Type: Beginning Of Strategy Summary Message (QS)"
  end
  if value == "QW" then
    return "Message Type: Swap Future Beginning Of Summary Message (QW)"
  end
  if value == "X" then
    return "Message Type: Option Trade Correction Message (X)"
  end
  if value == "XB" then
    return "Message Type: Future Options Trade Correction Message (XB)"
  end
  if value == "XF" then
    return "Message Type: Futures Trade Correction Message (XF)"
  end
  if value == "XS" then
    return "Message Type: Strategy Trade Correction Message (XS)"
  end
  if value == "XW" then
    return "Message Type: Swap Future Trade Correction Message (XW)"
  end
  if value == "GR" then
    return "Message Type: Group Status Message (GR)"
  end
  if value == "GS" then
    return "Message Type: Strategies Message (GS)"
  end
  if value == "L" then
    return "Message Type: Bulletins Message (L)"
  end
  if value == "S" then
    return "Message Type: End Of Sales Message (S)"
  end
  if value == "TT" then
    return "Message Type: Tick Table Message (TT)"
  end
  if value == "U" then
    return "Message Type: End Of Transmission Message (U)"
  end
  if value == "V" then
    return "Message Type: Circuit Assurance Message (V)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
dissect.message_type = function(buffer, offset, packet, parent)
  local length = size_of.message_type
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = display.message_type(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.message_type, range, value, display)

  return offset + length, value
end

-- Size: Sequence Number
size_of.sequence_number = 9

-- Display: Sequence Number
display.sequence_number = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
dissect.sequence_number = function(buffer, offset, packet, parent)
  local length = size_of.sequence_number
  local range = buffer(offset, length)
  local value = tonumber(range:string())

  if value == nil then
    value =  "Not Applicable"
  end

  local display = display.sequence_number(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + size_of.sequence_number

  index = index + size_of.message_type

  return index
end

-- Display: Message Header
display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: 9 Byte Ascii String
  index, sequence_number = dissect.sequence_number(buffer, index, packet, parent)

  -- Message Type: 2 Byte Ascii String Enum with 58 values
  index, message_type = dissect.message_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local length = size_of.message_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message_header(buffer, packet, parent)
    parent = parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.message_header, range, display)
  end

  return dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Size: Hsvf Stx
size_of.hsvf_stx = 1

-- Display: Hsvf Stx
display.hsvf_stx = function(value)
  return "Hsvf Stx: "..value
end

-- Dissect: Hsvf Stx
dissect.hsvf_stx = function(buffer, offset, packet, parent)
  local length = size_of.hsvf_stx
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.hsvf_stx(value, buffer, offset, packet, parent)

  parent:add(tmx_mx_sola_multicast_hsvf_v1_11.fields.hsvf_stx, range, value, display)

  return offset + length, value
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Packet
  local end_of_payload = buffer:len()

  while index < end_of_payload do

    -- Hsvf Stx: 1 Byte Fixed Width Integer Static
    index, hsvf_stx = dissect.hsvf_stx(buffer, index, packet, parent)

    -- Message Header: Struct of 2 fields
    index, message_header = dissect.message_header(buffer, index, packet, parent)

    -- Dependency element: Message Type
    local message_type = trim_right_spaces(buffer(index - 2, 2):string())

    -- Message Body: Runtime Type with 58 branches
    index = dissect.message_body(buffer, index, packet, parent, message_type)

    -- Hsvf Etx: 1 Byte Fixed Width Integer
    index, hsvf_etx = dissect.hsvf_etx(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function tmx_mx_sola_multicast_hsvf_v1_11.init()
end

-- Dissector for Tmx Mx Sola Multicast Hsvf 1.11
function tmx_mx_sola_multicast_hsvf_v1_11.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = tmx_mx_sola_multicast_hsvf_v1_11.name

  -- Dissect protocol
  local protocol = parent:add(tmx_mx_sola_multicast_hsvf_v1_11, buffer(), tmx_mx_sola_multicast_hsvf_v1_11.description, "("..buffer:len().." Bytes)")
  return dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, tmx_mx_sola_multicast_hsvf_v1_11)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.tmx_mx_sola_multicast_hsvf_v1_11_packet_size = function(buffer)

  return true
end

-- Verify Hsvf Stx Field
verify.hsvf_stx = function(buffer)
  -- Attempt to read field
  local value = buffer(0, 1):int()

  if value == 2 then
    return true
  end

  return false
end

-- Dissector Heuristic for Tmx Mx Sola Multicast Hsvf 1.11
local function tmx_mx_sola_multicast_hsvf_v1_11_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.tmx_mx_sola_multicast_hsvf_v1_11_packet_size(buffer) then return false end

  -- Verify Hsvf Stx
  if not verify.hsvf_stx(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = tmx_mx_sola_multicast_hsvf_v1_11
  tmx_mx_sola_multicast_hsvf_v1_11.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Tmx Mx Sola Multicast Hsvf 1.11
tmx_mx_sola_multicast_hsvf_v1_11:register_heuristic("udp", tmx_mx_sola_multicast_hsvf_v1_11_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Tmx Group
--   Version: 1.11
--   Date: Wednesday, January 23, 2019
--   Specification: hsvf-mx-005e-mx-sola-hsvf-multicast-specifications-guide-v1-11d5.pdf
-- 
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
--   Authors: Omi Developers
-- 
-- This script was generated by the Open Markets Initiative (Omi).
-- 
-- For full Omi information:
-- https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
