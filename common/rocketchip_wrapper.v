module rocketchip_wrapper (
    clock,
    reset,
    sys_reset,
    ext_intrs,

    // MEM
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_awid,
    M_AXI_awaddr,
    M_AXI_awlen,
    M_AXI_awsize,
    M_AXI_awburst,
    M_AXI_awlock,
    M_AXI_awcache,
    M_AXI_awprot,
    M_AXI_awqos,

    M_AXI_wready,
    M_AXI_wvalid,
    M_AXI_wdata,
    M_AXI_wstrb,
    M_AXI_wlast,

    M_AXI_bready,
    M_AXI_bvalid,
    M_AXI_bid,
    M_AXI_bresp,

    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_arid,
    M_AXI_araddr,
    M_AXI_arlen,
    M_AXI_arsize,
    M_AXI_arburst,
    M_AXI_arlock,
    M_AXI_arcache,
    M_AXI_arprot,
    M_AXI_arqos,

    M_AXI_rready,
    M_AXI_rvalid,
    M_AXI_rid,
    M_AXI_rdata,
    M_AXI_rresp,
    M_AXI_rlast,

    // MMIO
    M_AXI_MMIO_awready,
    M_AXI_MMIO_awvalid,
    M_AXI_MMIO_awid,
    M_AXI_MMIO_awaddr,
    M_AXI_MMIO_awlen,
    M_AXI_MMIO_awsize,
    M_AXI_MMIO_awburst,
    M_AXI_MMIO_awlock,
    M_AXI_MMIO_awcache,
    M_AXI_MMIO_awprot,
    M_AXI_MMIO_awqos,

    M_AXI_MMIO_wready,
    M_AXI_MMIO_wvalid,
    M_AXI_MMIO_wdata,
    M_AXI_MMIO_wstrb,
    M_AXI_MMIO_wlast,

    M_AXI_MMIO_bready,
    M_AXI_MMIO_bvalid,
    M_AXI_MMIO_bid,
    M_AXI_MMIO_bresp,

    M_AXI_MMIO_arready,
    M_AXI_MMIO_arvalid,
    M_AXI_MMIO_arid,
    M_AXI_MMIO_araddr,
    M_AXI_MMIO_arlen,
    M_AXI_MMIO_arsize,
    M_AXI_MMIO_arburst,
    M_AXI_MMIO_arlock,
    M_AXI_MMIO_arcache,
    M_AXI_MMIO_arprot,
    M_AXI_MMIO_arqos,

    M_AXI_MMIO_rready,
    M_AXI_MMIO_rvalid,
    M_AXI_MMIO_rid,
    M_AXI_MMIO_rdata,
    M_AXI_MMIO_rresp,
    M_AXI_MMIO_rlast,
);

input clock;
input reset;
input sys_reset;
input [5:0] ext_intrs;

// MEM
input M_AXI_awready;
output M_AXI_awvalid;
output [4:0] M_AXI_awid;
output [63:0] M_AXI_awaddr;
output [7:0] M_AXI_awlen;
output [2:0] M_AXI_awsize;
output [1:0] M_AXI_awburst;
output M_AXI_awlock;
output [3:0] M_AXI_awcache;
output [2:0] M_AXI_awprot;
output [3:0] M_AXI_awqos;

input M_AXI_wready;
output M_AXI_wvalid;
output [63:0] M_AXI_wdata;
output [7:0] M_AXI_wstrb;
output M_AXI_wlast;

output M_AXI_bready;
input M_AXI_bvalid;
input [4:0] M_AXI_bid;
input [1:0] M_AXI_bresp;

input M_AXI_arready;
output M_AXI_arvalid;
output [4:0] M_AXI_arid;
output [63:0] M_AXI_araddr;
output [7:0] M_AXI_arlen;
output [2:0] M_AXI_arsize;
output [1:0] M_AXI_arburst;
output M_AXI_arlock;
output [3:0] M_AXI_arcache;
output [2:0] M_AXI_arprot;
output [3:0] M_AXI_arqos;

output M_AXI_rready;
input M_AXI_rvalid;
input [4:0] M_AXI_rid;
input [63:0] M_AXI_rdata;
input [1:0] M_AXI_rresp;
input M_AXI_rlast;

// MMIO
input M_AXI_MMIO_awready;
output M_AXI_MMIO_awvalid;
output [4:0] M_AXI_MMIO_awid;
output [63:0] M_AXI_MMIO_awaddr;
output [7:0] M_AXI_MMIO_awlen;
output [2:0] M_AXI_MMIO_awsize;
output [1:0] M_AXI_MMIO_awburst;
output M_AXI_MMIO_awlock;
output [3:0] M_AXI_MMIO_awcache;
output [2:0] M_AXI_MMIO_awprot;
output [3:0] M_AXI_MMIO_awqos;

input M_AXI_MMIO_wready;
output M_AXI_MMIO_wvalid;
output [63:0] M_AXI_MMIO_wdata;
output [7:0] M_AXI_MMIO_wstrb;
output M_AXI_MMIO_wlast;

output M_AXI_MMIO_bready;
input M_AXI_MMIO_bvalid;
input [4:0] M_AXI_MMIO_bid;
input [1:0] M_AXI_MMIO_bresp;

input M_AXI_MMIO_arready;
output M_AXI_MMIO_arvalid;
output [4:0] M_AXI_MMIO_arid;
output [63:0] M_AXI_MMIO_araddr;
output [7:0] M_AXI_MMIO_arlen;
output [2:0] M_AXI_MMIO_arsize;
output [1:0] M_AXI_MMIO_arburst;
output M_AXI_MMIO_arlock;
output [3:0] M_AXI_MMIO_arcache;
output [2:0] M_AXI_MMIO_arprot;
output [3:0] M_AXI_MMIO_arqos;

output M_AXI_MMIO_rready;
input M_AXI_MMIO_rvalid;
input [4:0] M_AXI_MMIO_rid;
input [63:0] M_AXI_MMIO_rdata;
input [1:0] M_AXI_MMIO_rresp;
input M_AXI_MMIO_rlast;

assign M_AXI_araddr[63:32] = 0;
assign M_AXI_awaddr[63:32] = 0;
assign M_AXI_MMIO_araddr[63:31] = 0;
assign M_AXI_MMIO_awaddr[63:31] = 0;

Top top(
    .clock                          (clock              ),
    .reset                          (reset              ),
    .sys_reset                      (sys_reset          ),
    .ext_intrs                      (ext_intrs          ),

    // MEM
    .io_mem_axi4_0_aw_ready         (M_AXI_awready      ),
    .io_mem_axi4_0_aw_valid         (M_AXI_awvalid      ),
    .io_mem_axi4_0_aw_bits_id       (M_AXI_awid         ),
    .io_mem_axi4_0_aw_bits_addr     (M_AXI_awaddr[31:0] ),
    .io_mem_axi4_0_aw_bits_len      (M_AXI_awlen        ),
    .io_mem_axi4_0_aw_bits_size     (M_AXI_awsize       ),
    .io_mem_axi4_0_aw_bits_burst    (M_AXI_awburst      ),
    .io_mem_axi4_0_aw_bits_lock     (M_AXI_awlock       ),
    .io_mem_axi4_0_aw_bits_cache    (M_AXI_awcache      ),
    .io_mem_axi4_0_aw_bits_prot     (M_AXI_awprot       ),
    .io_mem_axi4_0_aw_bits_qos      (M_AXI_awqos        ),
    .io_mem_axi4_0_w_ready          (M_AXI_wready       ),
    .io_mem_axi4_0_w_valid          (M_AXI_wvalid       ),
    .io_mem_axi4_0_w_bits_data      (M_AXI_wdata        ),
    .io_mem_axi4_0_w_bits_strb      (M_AXI_wstrb        ),
    .io_mem_axi4_0_w_bits_last      (M_AXI_wlast        ),
    .io_mem_axi4_0_b_ready          (M_AXI_bready       ),
    .io_mem_axi4_0_b_valid          (M_AXI_bvalid       ),
    .io_mem_axi4_0_b_bits_id        (M_AXI_bid          ),
    .io_mem_axi4_0_b_bits_resp      (M_AXI_bresp        ),
    .io_mem_axi4_0_ar_ready         (M_AXI_arready      ),
    .io_mem_axi4_0_ar_valid         (M_AXI_arvalid      ),
    .io_mem_axi4_0_ar_bits_id       (M_AXI_arid         ),
    .io_mem_axi4_0_ar_bits_addr     (M_AXI_araddr[31:0] ),
    .io_mem_axi4_0_ar_bits_len      (M_AXI_arlen        ),
    .io_mem_axi4_0_ar_bits_size     (M_AXI_arsize       ),
    .io_mem_axi4_0_ar_bits_burst    (M_AXI_arburst      ),
    .io_mem_axi4_0_ar_bits_lock     (M_AXI_arlock       ),
    .io_mem_axi4_0_ar_bits_cache    (M_AXI_arcache      ),
    .io_mem_axi4_0_ar_bits_prot     (M_AXI_arprot       ),
    .io_mem_axi4_0_ar_bits_qos      (M_AXI_arqos        ),
    .io_mem_axi4_0_r_ready          (M_AXI_rready       ),
    .io_mem_axi4_0_r_valid          (M_AXI_rvalid       ),
    .io_mem_axi4_0_r_bits_id        (M_AXI_rid          ),
    .io_mem_axi4_0_r_bits_data      (M_AXI_rdata        ),
    .io_mem_axi4_0_r_bits_resp      (M_AXI_rresp        ),
    .io_mem_axi4_0_r_bits_last      (M_AXI_rlast        ),
    .io_mmio_axi4_0_aw_ready        (M_AXI_MMIO_awready ),
    .io_mmio_axi4_0_aw_valid        (M_AXI_MMIO_awvalid ),
    .io_mmio_axi4_0_aw_bits_id      (M_AXI_MMIO_awid    ),
    .io_mmio_axi4_0_aw_bits_addr    (M_AXI_MMIO_awaddr[30:0]),
    .io_mmio_axi4_0_aw_bits_len     (M_AXI_MMIO_awlen   ),
    .io_mmio_axi4_0_aw_bits_size    (M_AXI_MMIO_awsize  ),
    .io_mmio_axi4_0_aw_bits_burst   (M_AXI_MMIO_awburst ),
    .io_mmio_axi4_0_aw_bits_lock    (M_AXI_MMIO_awlock  ),
    .io_mmio_axi4_0_aw_bits_cache   (M_AXI_MMIO_awcache ),
    .io_mmio_axi4_0_aw_bits_prot    (M_AXI_MMIO_awprot  ),
    .io_mmio_axi4_0_aw_bits_qos     (M_AXI_MMIO_awqos   ),
    .io_mmio_axi4_0_w_ready         (M_AXI_MMIO_wready  ),
    .io_mmio_axi4_0_w_valid         (M_AXI_MMIO_wvalid  ),
    .io_mmio_axi4_0_w_bits_data     (M_AXI_MMIO_wdata   ),
    .io_mmio_axi4_0_w_bits_strb     (M_AXI_MMIO_wstrb   ),
    .io_mmio_axi4_0_w_bits_last     (M_AXI_MMIO_wlast   ),
    .io_mmio_axi4_0_b_ready         (M_AXI_MMIO_bready  ),
    .io_mmio_axi4_0_b_valid         (M_AXI_MMIO_bvalid  ),
    .io_mmio_axi4_0_b_bits_id       (M_AXI_MMIO_bid     ),
    .io_mmio_axi4_0_b_bits_resp     (M_AXI_MMIO_bresp   ),
    .io_mmio_axi4_0_ar_ready        (M_AXI_MMIO_arready ),
    .io_mmio_axi4_0_ar_valid        (M_AXI_MMIO_arvalid ),
    .io_mmio_axi4_0_ar_bits_id      (M_AXI_MMIO_arid    ),
    .io_mmio_axi4_0_ar_bits_addr    (M_AXI_MMIO_araddr[30:0]),
    .io_mmio_axi4_0_ar_bits_len     (M_AXI_MMIO_arlen   ),
    .io_mmio_axi4_0_ar_bits_size    (M_AXI_MMIO_arsize  ),
    .io_mmio_axi4_0_ar_bits_burst   (M_AXI_MMIO_arburst ),
    .io_mmio_axi4_0_ar_bits_lock    (M_AXI_MMIO_arlock  ),
    .io_mmio_axi4_0_ar_bits_cache   (M_AXI_MMIO_arcache ),
    .io_mmio_axi4_0_ar_bits_prot    (M_AXI_MMIO_arprot  ),
    .io_mmio_axi4_0_ar_bits_qos     (M_AXI_MMIO_arqos   ),
    .io_mmio_axi4_0_r_ready         (M_AXI_MMIO_rready  ),
    .io_mmio_axi4_0_r_valid         (M_AXI_MMIO_rvalid  ),
    .io_mmio_axi4_0_r_bits_id       (M_AXI_MMIO_rid     ),
    .io_mmio_axi4_0_r_bits_data     (M_AXI_MMIO_rdata   ),
    .io_mmio_axi4_0_r_bits_resp     (M_AXI_MMIO_rresp   ),
    .io_mmio_axi4_0_r_bits_last     (M_AXI_MMIO_rlast   ),
);

endmodule