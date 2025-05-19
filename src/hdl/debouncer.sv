module debouncer (
    input logic clk,
    input logic rst,
    input logic btn_in,
    output logic btn_out
);

    logic [19:0] counter;  // Счётчик для задержки (~20 мс при 100 МГц)
    logic btn_sync;

    // Синхронизация входного сигнала
    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            btn_sync <= 0;
            counter <= 0;
            btn_out <= 0;
        end else begin
            btn_sync <= btn_in;
            if (btn_sync != btn_out) begin
                if (counter == 20'hFFFFF) begin
                    btn_out <= btn_sync;
                    counter <= 0;
                end else begin
                    counter <= counter + 1;
                end
            end else begin
                counter <= 0;
            end
        end
    end

endmodule