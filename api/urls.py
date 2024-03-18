from django.urls import path, re_path
from django.views.decorators.csrf import csrf_exempt

from api.views import *


urlpatterns = [

	path("driver", csrf_exempt(DriverView.as_view())),
	path("driver/", csrf_exempt(DriverView.as_view())),
	path("chama", csrf_exempt(ChamaView.as_view())),
	# re_path("DriverView", csrf_exempt(DriverView.as_view())),
	re_path("DriverView", csrf_exempt(DriverView.as_view())),
	path("DriverView/<pk>", DriverView.as_view()),
	path("driver_detail/<pk>", driver_detail),

	# re_path("ChamasView/((?P<pk>\d+)/)?", csrf_exempt(ChamasView.as_view())),
	# re_path("\d+)/)?", csrf_exempt(ChamasView.as_view())),
	path("CountriesView", csrf_exempt(CountriesView.as_view())),
	path("DistrictsView", csrf_exempt(DistrictsView.as_view())),
	path("DriverLoginsView", csrf_exempt(DriverLoginsView.as_view())),
	path("DriverUniformsView", csrf_exempt(DriverUniformsView.as_view())),
	path("DriversView", csrf_exempt(DriversView.as_view())),
	path("LeadersPermissionsView", csrf_exempt(LeadersPermissionsView.as_view())),
	path("LeadersTypesPermissionsView", csrf_exempt(LeadersTypesPermissionsView.as_view())),
	path("LeadershipTypesView", csrf_exempt(LeadershipTypesView.as_view())),
	path("ParkAreasView", csrf_exempt(ParkAreasView.as_view())),
	path("ParkLeadersView", csrf_exempt(ParkLeadersView.as_view())),
	path("RegionsView", csrf_exempt(RegionsView.as_view())),
	path("SignOtpView", csrf_exempt(SignOtpView.as_view())),
	path("VehicleTypesView", csrf_exempt(VehicleTypesView.as_view())),
	path("WardsView", csrf_exempt(WardsView.as_view())),
	path("VerifiedPhonesView", csrf_exempt(VerifiedPhonesView.as_view())),
	path("search_vituo/<keyword>", csrf_exempt(search_vituo)),
	path("confirm_phone/<number>", csrf_exempt(confirm_phone)),
	path("confirm_otp/<number>", csrf_exempt(confirm_otp)),



	path("acts/search/drivers", filtered_driver),



	path("get/init/data", initial_data)

]