Team member: Bui Quang Dien (s3445846), Nguyen Trung Tu (s3463610), Phan Van Trung (s3479773)

ClearSite is the Web Form application for admin usage only.
UserSite is the MVC application for users to buy products

Before running the MVC application, the connection string in the Web.Config file must be replaced by
the location of the Shopping.mdf file in your machine.

E.g. In the Web.Config File:
<connectionStrings>
	<add name="DefaultConnection" connectionString="Data Source=(LocalDb)\MSSQLLocalDB;AttachDbFilename=C:\Users\Dien\Documents\GitHub\ShoppingCart\ClerkSite\ClerkSite\App_Data\Shopping.mdf;Initial Catalog=aspnet-UserSite-20150812124742;Integrated Security=True" providerName="System.Data.SqlClient" />
	<add name="ShoppingEntities" connectionString="metadata=res://*/ShoppingModel.csdl|res://*/ShoppingModel.ssdl|res://*/ShoppingModel.msl;provider=System.Data.SqlClient;provider connection string=&quot;data source=(LocalDb)\MSSQLLocalDB;attachdbfilename=C:\Users\Dien\Documents\GitHub\ShoppingCart\ClerkSite\ClerkSite\App_Data\Shopping.mdf;initial catalog=aspnet-UserSite-20150812124742;integrated security=True;MultipleActiveResultSets=True;App=EntityFramework&quot;" providerName="System.Data.EntityClient" />
</connectionStrings>

"C:\Users\Dien\Documents\GitHub\ShoppingCart\ClerkSite\ClerkSite\App_Data\Shopping.mdf" MUST BE REPLACED to match with the link on your machine.

References:
https://shapebootstrap.net/item/1524993-eshopper-best-free-ecommerce-html-template
http://www.w3resource.com/javascript/form/credit-card-validation.php
http://appuntistudenteschi.altervista.org/wp-content/uploads/2013/02/0042141_intel_core_i7_3630qm_cpu_24ghz_6mb_cache_4_cores.jpg
http://i.ebayimg.com/00/s/MTIwMFgxNjAw/z/5K0AAOSwIBBUa7VO/$_35.JPG
http://www.lankabiznet.com/864-thickbox/kingston-ram-4gb-ddr3-1333-mhz.jpg
http://www.geeky-gadgets.com/wp-content/uploads/2012/08/kingston-ram.jpg
http://www.mytrendyphone.co.uk/images/PNY-NVIDIA-Quadro-NVS-300-512MB-DDR3-PCI-E-Graphics-Card-11042012-p.jpg
http://gtx-force.ru/wp-content/uploads/2014/04/GeForce-GTX-860M.jpg
http://mygaming.co.za/news/wp-content/uploads/2015/01/GTX-960-Gaming.jpg
http://images.bit-tech.net/news_images/2013/02/amd-radeon-7000/article_img.jpg
http://cdn.wccftech.com/wp-content/uploads/2013/08/AMD-FX-Processors.jpg