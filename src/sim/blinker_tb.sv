module blinker_tb();

    parameter PERIOD = 10;

    logic rst;
    logic clk_p = 0;
    logic clk_n = 0;
    logic sw_btn_i = 0;
    logic left_btn_i = 0;
    logic right_btn_i = 0;
    logic [7:0] led_o = 0;
    
    logic bclk = 0;

    blinker my_blinker(
        .rst(rst),
        .clk_p(clk_p), 
        .clk_n(clk_n),
        .sw_btn(sw_btn_i),
        .left_btn(left_btn_i),
        .right_btn(right_btn_i),
        .led(led_o)
    );

    initial begin
        clk_p = 1'b0;
        clk_n = 1'b1;
        bclk = 1'b0;
        #(PERIOD/2);
        forever
            #(PERIOD/2) {clk_p, clk_n} = ~{clk_p, clk_n};
    end
     
    initial begin
        rst = 0;
        repeat(10) @ (posedge clk_p);
        rst = 1;
        repeat(10) @ (posedge clk_p);
        rst = 0;
    end




endmodule
