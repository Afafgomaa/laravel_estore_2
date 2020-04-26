<!-- //footer style One -->
<footer id="footerOne"  class="footer-area footer-content footer-one footer-desktop d-none d-lg-block d-xl-block">
  <div class="container">
    <div class="row">
        @if(!empty(categories(6)))
            @foreach(categories(6) as $category)
                <div class="col-lg-2">
                    <p> <a href="{{url('shop?category=').$category->slug}}">{{$category->name}}</a> </p>
                    @if(count($category->sub_categories))
                        <ul>
                            @foreach($category->sub_categories as $sub)
                                <li><a href="#">{{$sub->sub_name}}</a></li>

                            @endforeach
                        </ul>
                    @endif
                </div>
            @endforeach
        @endif
    </div>
      <div class="socials">
          <ul class="list">
              <li>
                  @if(!empty($result['commonContent']['setting'][50]->value))
                      <a href="{{$result['commonContent']['setting'][50]->value}}" class="fab fa-facebook-f" target="_blank"></a>
                  @else
                      <a href="#" class="fab fa-facebook-f"></a>
                  @endif
              </li>
              <li>
                  @if(!empty($result['commonContent']['setting'][52]->value))
                      <a href="{{$result['commonContent']['setting'][52]->value}}" class="fab fa-twitter" target="_blank"></a>
                  @else
                      <a href="#" class="fab fa-twitter"></a>
                  @endif</li>
              <li>
                  @if(!empty($result['commonContent']['setting'][51]->value))
                      <a href="{{$result['commonContent']['setting'][51]->value}}"  target="_blank"><i class="fab fa-google"></i></a>
                  @else
                      <a href="#"><i class="fab fa-google"></i></a>
                  @endif
              </li>
              <li>
                  @if(!empty($result['commonContent']['setting'][53]->value))
                      <a href="{{$result['commonContent']['setting'][53]->value}}" class="fab fa-linkedin-in" target="_blank"></a>
                  @else
                      <a href="#" class="fab fa-linkedin-in"></a>
                  @endif
              </li>
          </ul>
      </div>

          <div class="navbar-collapse">
              <ul class="navbar-nav">
                  @foreach($result['commonContent']["menus"] as $menus)
                      <li class="nav-item dropdown">
                          <a class="nav-link @if(property_exists(" childs",'')) dropdown-toggle @endif"
                             @if($menus->type == 0)target="_blank"@endif @if($menus->type == 0)
                             href="{{$menus->external_link}}" @elseif($menus->type == 1)
                             href="{{url($menus->link)}}" @else href="#" @endif >
                              {{$menus->name}}
                          </a>
                          @if(property_exists("childs",''))
                              <div class="dropdown-menu">
                                  @foreach($menus->childs as $me)
                                      <a class="dropdown-item" @if($me->type == 0)target="_blank"@endif @if($me->type
                                            == 0) href="{{$me->external_link}}" @elseif($me->type == 1)
                                      href="{{url($me->link)}}" @else href="#" @endif >
                                          {{$me->name}}
                                      </a>
                                  @endforeach
                              </div>
                          @endif
                      </li>
                  @endforeach

              </ul>
          </div>


  </div>
</footer>




