set clock_constraint { \
    name clk \
    module half_adder<bool> \
    port ap_clk \
    period 10 \
    uncertainty 2.7 \
}

set all_path {}

set false_path {}

