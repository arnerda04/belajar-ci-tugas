  <!-- ======= Sidebar ======= -->
  <aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">
      <li class="nav-item">
        <a class="nav-link <?php echo (uri_string() == '') ? " " : "collapsed" ?>" href="."> <!-- menyesuaikan route -->
          <i class="bi bi-grid"></i>
          <span>Home</span>
        </a>
      </li><!-- End home Nav -->
    </ul>

    <ul class="sidebar-nav" id="sidebar-nav">
      <li class="nav-item">
        <a class="nav-link <?php echo (uri_string() == 'keranjang') ? " " : "collapsed" ?>" href="keranjang"> <!-- menyesuaikan route -->
          <i class="bi bi-cart-check"></i>
          <span>Keranjang</span>
        </a>
      </li><!-- End Keranjang Nav -->
    </ul>

    <!-- pengecekan kondisi role -->
    <?php
    if (session()->get('role') == 'admin'){  
    ?>
    <ul class="sidebar-nav" id="sidebar-nav">
      <li class="nav-item">
        <a class="nav-link <?php echo (uri_string() == 'produk') ? " " : "collapsed" ?>" href="produk"> <!-- menyesuaikan route -->
        <i class="bi bi-receipt"></i>
          <span>Produk</span>
        </a>
      </li><!-- End Produk Nav -->
      <?php 
      }
      ?>
    </ul>

    <ul class="sidebar-nav" id="sidebar-nav">
      <li class="nav-item">
          <a class="nav-link <?php echo (uri_string() == 'contact') ? " " : "collapsed" ?>" href="contact">
            <i class="bi bi-envelope"></i>
            <span>Contact</span>
          </a>
      </li>
    </ul>


  </aside><!-- End Sidebar-->
