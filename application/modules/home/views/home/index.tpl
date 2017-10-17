{extends file="templates/index.tpl"}
<!-- 
    Định dạng tiền trong smarty
    $var|number_format:0:".":","}  
    Trong đó:
        "0" là định dạng số lẻ
        "." là dấu phân cách phần ngàn
        "," là dấu phân cách số lẻ

-->
{block name="main"}
	<div id="main">
        <div class="wrapper_main">
            <div class="block_main">
                <section class="block main_top">
                    <div class="block_left">

                    	{include file="templates/banner_slide.tpl"}
                        
                    </div>
                    <div class="block_right">
                        <ul class="baner_seo">
                            <li>
                                <a href="">
                                    <img src="{$link_frontend}/templates1/images/topbanner1-250x196.jpg"/>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <img src="{$link_frontend}/templates1/images/topbanner2-250x196.jpg"/>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="clear"></div>
                </section>
                <section class="block main_bottom">
                    <div class="block_left">
                        <div class="block category">
                            <div class="title">Danh mục</div>
                            <ul class="content list_category">
                                <li><a href="">Danh mục 1</a></li>
                                <li><a href="">Danh mục 2</a></li>
                                <li><a href="">Danh mục 3</a></li>
                                <li><a href="">Danh mục 4</a></li>
                            </ul>
                        </div>

                        <div class="banner_left">
                            <img src="{$link_frontend}/templates1/images/leftbanner-211x270.png"/>
                        </div>

                        <div class="block product product_sale">
                            <div class="title">Sản phẩm</div>
                            <ul class="content">
                                <li>
                                    <div class="block item_product">
                                        <div class="block_left">
                                            <div class="img_product">
                                                <img src="{$link_frontend}/templates1/images/12-80x80.jpg"/>
                                            </div>
                                        </div>
                                        <div class="block_right">
                                            <div class="content_product">
                                                <p class="name_product">sản phẩm 1</p>
                                                <a href="">add</a>
                                            </div>
                                        </div>
                                        <div class="clear"></div>
                                    </div>
                                </li>
                                <li>
                                    <div class="block item_product">
                                        <div class="block_left">
                                            <div class="img_product">
                                                <img src="{$link_frontend}/templates1/images/13-80x80.jpg"/>
                                            </div>
                                        </div>
                                        <div class="block_right">
                                            <div class="content_product">
                                                <p class="name_product">sản phẩm 1</p>
                                                <a href="">add</a>
                                            </div>
                                        </div>
                                        <div class="clear"></div>
                                    </div>
                                </li>
                            </ul>
                        </div>

                        <div class="block product product_hot">
                            <div class="title">Sản phẩm</div>
                            <ul class="content">
                                <li>
                                    <div class="block item_product">
                                        <div class="block_left">
                                            <div class="img_product">
                                                <img src="{$link_frontend}/templates1/images/18-80x80.jpg"/>
                                            </div>
                                        </div>
                                        <div class="block_right">
                                            <div class="content_product">
                                                <p class="name_product">sản phẩm 1</p>
                                                <a href="">add</a>
                                            </div>
                                        </div>
                                        <div class="clear"></div>
                                    </div>
                                </li>
                                <li>
                                    <div class="block item_product">
                                        <div class="block_left">
                                            <div class="img_product">
                                                <img src="{$link_frontend}/templates1/images/17-80x80.jpg"/>
                                            </div>
                                        </div>
                                        <div class="block_right">
                                            <div class="content_product">
                                                <p class="name_product">sản phẩm 1</p>
                                                <a href="">add</a>
                                            </div>
                                        </div>
                                        <div class="clear"></div>
                                    </div>
                                </li>
                            </ul>
                        </div>

                    </div>

                    <div class="block_right">
                        <div class="slide_product">
                            <h4 class="heading_slide">danh mục 1</h4>
                            <ul class="content_slide">
                                <li>
                                    <div class="slide_item-product">
                                        <a href="">
                                            <div class="img_product">
                                                <img class="image_respon" src="{$link_frontend}/templates1/images/23-220x200.jpg"/>
                                            </div>
                                            <div class="content">
                                                <h4 class="name_product">sản phẩm 1</h4>
                                                <p class="price">5555$</p>
                                                <a class="buy" href="">Buy_now</a>
                                            </div>
                                        </a>
                                    </div>
                                </li>
                                <li>
                                    <div class="slide_item-product">
                                        <a href="">
                                            <div class="img_product">
                                                <img class="image_respon" src="{$link_frontend}/templates1/images/18-220x200.jpg"/>
                                                <span class="saleicon sale">Sale</span>
                                            </div>
                                            <div class="content">
                                                <h4 class="name_product">sản phẩm 1</h4>
                                                <p class="price">5555$</p>
                                                <a class="buy" href="">Buy_now</a>
                                            </div>
                                        </a>
                                    </div>
                                </li>
                                <li>
                                    <div class="slide_item-product">
                                        <a href="">
                                            <div class="img_product">
                                                <img class="image_respon" src="{$link_frontend}/templates1/images/17-220x200.jpg"/>
                                            </div>
                                            <div class="content">
                                                <h4 class="name_product">sản phẩm 1</h4>
                                                <p class="price">5555$</p>
                                                <a class="buy" href="">Buy_now</a>
                                            </div>
                                        </a>
                                    </div>
                                </li>
                                <li>
                                    <div class="slide_item-product">
                                        <a href="">
                                            <div class="img_product">
                                                <img class="image_respon" src="{$link_frontend}/templates1/images/23-220x200.jpg"/>
                                            </div>
                                            <div class="content">
                                                <h4 class="name_product">sản phẩm 1</h4>
                                                <p class="price">5555$</p>
                                                <a class="buy" href="">Buy_now</a>
                                            </div>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </div>

                        <div class="slide_product">
                            <h4 class="heading_slide">danh mục 1</h4>
                            <ul class="content_slide">
                                <li>
                                    <div class="slide_item-product">
                                        <a href="">
                                            <div class="img_product">
                                                <img class="image_respon" src="{$link_frontend}/templates1/images/23-220x200.jpg"/>
                                            </div>
                                            <div class="content">
                                                <h4 class="name_product">sản phẩm 1</h4>
                                                <p class="price">5555$</p>
                                                <a class="buy" href="">Buy_now</a>
                                            </div>
                                        </a>
                                    </div>
                                </li>
                                <li>
                                    <div class="slide_item-product">
                                        <a href="">
                                            <div class="img_product">
                                                <img class="image_respon" src="{$link_frontend}/templates1/images/18-220x200.jpg"/>
                                                <span class="saleicon sale">Sale</span>
                                            </div>
                                            <div class="content">
                                                <h4 class="name_product">sản phẩm 1</h4>
                                                <p class="price">5555$</p>
                                                <a class="buy" href="">Buy_now</a>
                                            </div>
                                        </a>
                                    </div>
                                </li>
                                <li>
                                    <div class="slide_item-product">
                                        <a href="">
                                            <div class="img_product">
                                                <img class="image_respon" src="{$link_frontend}/templates1/images/17-220x200.jpg"/>
                                            </div>
                                            <div class="content">
                                                <h4 class="name_product">sản phẩm 1</h4>
                                                <p class="price">5555$</p>
                                                <a class="buy" href="">Buy_now</a>
                                            </div>
                                        </a>
                                    </div>
                                </li>
                                <li>
                                    <div class="slide_item-product">
                                        <a href="">
                                            <div class="img_product">
                                                <img class="image_respon" src="{$link_frontend}/templates1/images/23-220x200.jpg"/>
                                            </div>
                                            <div class="content">
                                                <h4 class="name_product">sản phẩm 1</h4>
                                                <p class="price">5555$</p>
                                                <a class="buy" href="">Buy_now</a>
                                            </div>
                                        </a>
                                    </div>
                                </li>
                            </ul>
                        </div>

                        <ul id="service">
                            <li>
                                <a href="">
                                    <img src="{$link_frontend}/templates1/images/subbanner1-289x49.png"/>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <img src="{$link_frontend}/templates1/images/subbanner2-289x49.png"/>
                                </a>
                            </li>
                        </ul>

                        <ul id="partner">
                            <li>
                                <img src="{$link_frontend}/templates1/images/logo-8-137x90-137x90.png"/>
                            </li>
                            <li>
                                <img src="{$link_frontend}/templates1/images/logo-2-137x90-137x90.png"/>
                            </li>
                            <li>
                                <img src="{$link_frontend}/templates1/images/logo-6-137x90-137x90.png"/>
                            </li>
                            <li>
                                <img src="{$link_frontend}/templates1/images/logo-8-137x90-137x90.png"/>
                            </li>
                            <li>
                                <img src="{$link_frontend}/templates1/images/logo-2-137x90-137x90.png"/>
                            </li>
                        </ul>

                    </div>
                    <div class="clear"></div>
                </section>
            </div>
        </div>
    </div>
{/block}