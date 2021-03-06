<div class="container-fluid work-gallery-section">
  <div class="row gallery-slice">

    <div class="container">

        <div class="row">
            <h2 class="col-md-12">$Title</h2>
        </div>

        <div class='row'>
            <div class='col-md-12'>
                <div class="carousel slide media-carousel home-gallery" id="media">

                    <div class="carousel-inner">
                        <% loop $Children.Limit(12) %>
                            <% if $First %>
                                <div class="item active"><div class="row">
                            <% else_if $MultipleOf(3,3) %>
                                <div class="item"><div class="row">
                            <% end_if %>

                            <div class="col-md-4">
                                <a href="$Link">
                                    <img class="img-responsive center-block" src="$AlbumCover.CroppedImage(230,230).Url"/>
                                    <h4>$Title</h4>
                                    <p>$Description</p>
                                </a>
                            </div>

                            <% if $MultipleOf(3) %>
                                </div></div>
                            <% end_if %>

                        <% end_loop %>
                    </div>
                        <a data-slide="prev" href="#media" class="left carousel-control gallery icon-left hidden-xs">
                        <i class="fa fa-angle-left"></i>
                      </a>
                        <a data-slide="next" href="#media" class="right carousel-control gallery icon-right hidden-xs">

                            <i class="fa fa-angle-right"></i>
                        </a>

                </div>
            </div>
        </div>

    </div>
  </div>
</div>
