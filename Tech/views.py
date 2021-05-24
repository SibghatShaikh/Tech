from django.shortcuts import render
from django.http import HttpResponse
from django.http import HttpResponseRedirect
from Tech.models import *


# Create your views here.

def home(request):
	return render(request, 'Tech/dashboard.html')

def processor(request):
	processor= Processor.objects.all()
	return render(request, 'Tech/processor.html',{'cpu':processor})

def accessories(request):
	accessories=Accessories.objects.all()
	return render(request, 'Tech/accessories.html',{'accessories':accessories})

def gpu(request):
	gpu = Gpu.objects.all()
	return render(request, 'Tech/gpu.html',{'gpu':gpu})


def monitor(request):
	monitor= Monitor.objects.all()
	return render(request, 'Tech/monitor.html',{'monitor':monitor})


def motherboard(request):
	motherboard=Motherboard.objects.all()
	return render(request, 'Tech/motherboard.html',{'mobo':motherboard})

def psu(request):
	psu=Psu.objects.all()
	return render(request, 'Tech/psu.html',{'psu':psu})


def ram(request):
	ram=Ram.objects.all()
	return render(request, 'Tech/ram.html',{'ram':ram})


def recommendedshops(request):
	recommendedshops=Recommendedshops.objects.all()
	return render(request, 'Tech/recommendedshops.html',{'shops':recommendedshops})

def storage(request):
	storage=Hddandssd.objects.all()
	return render(request, 'Tech/storage.html',{'storage':storage})

def gpucompare(request):
	gpu=Gpu.objects.all()
	return render(request, 'Tech/gpucompare.html',{'gpu':gpu})

def cpucompare(request):
	processor=Processor.objects.all()
	return render(request, 'Tech/cpucompare.html',{'cpu':processor})

def reviewlink(request):
	return HttpResponseRedirect('/url-name-here/')





