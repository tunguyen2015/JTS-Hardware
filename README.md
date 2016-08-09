This website is built by Mr. Bui Quang Dien (s3445846), me (s3463610) and Mr. Phan Van Trung (s3479773) as part of the Web Development Technologies course project. It features a casual business/e-commerce website with all the required fundamental functions. 

Used Technologies:

- Front-end: HTML5, CSS/CSS3, Javascript, JQuery.
- Back-end: ASP.NET, MVC4, Entity Framework and Microsoft SQL Server.

The joint project can also be found at Mr. Dien's GitHub at: https://github.com/joebui/ShoppingCart

**Important Note:

ClearSite is the Web Form application for admin usage only.
UserSite is the MVC application for users to buy products

Before running the MVC application, the connection string in the Web.Config file must be replaced by
the location of the Shopping.mdf file in your machine.

E.g. In the Web.Config File:
<connectionStrings>
	<add name="DefaultConnection" connectionString="Data Source=(LocalDb)\MSSQLLocalDB;AttachDbFilename=C:\Users\Tu\Documents\GitHub\ShoppingCart\ClerkSite\ClerkSite\App_Data\Shopping.mdf;Initial Catalog=aspnet-UserSite-20150812124742;Integrated Security=True" providerName="System.Data.SqlClient" />
	<add name="ShoppingEntities" connectionString="metadata=res://*/ShoppingModel.csdl|res://*/ShoppingModel.ssdl|res://*/ShoppingModel.msl;provider=System.Data.SqlClient;provider connection string=&quot;data source=(LocalDb)\MSSQLLocalDB;attachdbfilename=C:\Users\Tu\Documents\GitHub\ShoppingCart\ClerkSite\ClerkSite\App_Data\Shopping.mdf;initial catalog=aspnet-UserSite-20150812124742;integrated security=True;MultipleActiveResultSets=True;App=EntityFramework&quot;" providerName="System.Data.EntityClient" />
</connectionStrings>

"C:\Users\Tu\Documents\GitHub\ShoppingCart\ClerkSite\ClerkSite\App_Data\Shopping.mdf" MUST BE REPLACED to match with the link on your machine.

Photo & Template References:

1.https://shapebootstrap.net/item/1524993-eshopper-best-free-ecommerce-html-template
2.http://www.w3resource.com/javascript/form/credit-card-validation.php
3.http://appuntistudenteschi.altervista.org/wp-content/uploads/2013/02/0042141_intel_core_i7_3630qm_cpu_24ghz_6mb_cache_4_cores.jpg
4.http://i.ebayimg.com/00/s/MTIwMFgxNjAw/z/5K0AAOSwIBBUa7VO/$_35.JPG
5.http://www.lankabiznet.com/864-thickbox/kingston-ram-4gb-ddr3-1333-mhz.jpg
6.http://www.geeky-gadgets.com/wp-content/uploads/2012/08/kingston-ram.jpg
7.http://www.mytrendyphone.co.uk/images/PNY-NVIDIA-Quadro-NVS-300-512MB-DDR3-PCI-E-Graphics-Card-11042012-p.jpg
8.http://gtx-force.ru/wp-content/uploads/2014/04/GeForce-GTX-860M.jpg
9.http://mygaming.co.za/news/wp-content/uploads/2015/01/GTX-960-Gaming.jpg
10.http://images.bit-tech.net/news_images/2013/02/amd-radeon-7000/article_img.jpg
11.http://cdn.wccftech.com/wp-content/uploads/2013/08/AMD-FX-Processors.jpg
