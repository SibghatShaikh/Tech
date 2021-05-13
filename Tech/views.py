from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.

def home(request):
	return render(request, 'Tech/dashboard.html')

def processor(request):
	return render(request, 'Tech/processor.html')

def accessories(request):
	return render(request, 'Tech/accessories.html')

def gpu(request):
	return render(request, 'Tech/gpu.html')


def monitor(request):
	return render(request, 'Tech/monitor.html')


def motherboard(request):
	return render(request, 'Tech/motherboard.html')

def psu(request):
	return render(request, 'Tech/psu.html')


def ram(request):
	return render(request, 'Tech/ram.html')


def recommendedshops(request):
	return render(request, 'Tech/recommendedshops.html')

def storage(request):
	return render(request, 'Tech/storage.html')





