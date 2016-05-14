package com.apk.shield;

import java.net.URL;
import java.util.Enumeration;

import android.text.TextUtils;
import android.util.Log;

import dalvik.system.DexClassLoader;
import dalvik.system.PathClassLoader;


public class ShieldDexClassLoader extends DexClassLoader
{
	private static final String TAG = "ShieldDexClassLoader";
	
	PathClassLoader mParent = null;
	
	
	public ShieldDexClassLoader(
			String dexPath ,
			String optimizedDirectory ,
			String libraryPath ,
			PathClassLoader parent )
	{		
		super( dexPath , optimizedDirectory , libraryPath , parent );
		 
	}

	@Override
	protected Class<?> findClass(
			String name ) throws ClassNotFoundException
	{
		 
		return super.findClass( name );
	}

	@Override
	public String findLibrary(
			String name )
	{
		 
		Log.d(TAG, "ShieldDexClassLoader findLibrary name " + name );
		String libpath = super.findLibrary( name );
		if(TextUtils.isEmpty( libpath ))
		{
			libpath = ((PathClassLoader)this.getParent()).findLibrary( name );
		}				
		return libpath;
	}

	@Override
	protected URL findResource(
			String name )
	{
		 
		Log.d(TAG, "ShieldDexClassLoader findResource name " + name );
		return super.findResource( name );
	}

	@Override
	protected Enumeration<URL> findResources(
			String name )
	{
		 
		Log.d(TAG , "ShieldDexClassLoader findResources name " + name );
		return super.findResources( name );
	}

	@Override
	protected synchronized Package getPackage(
			String name )
	{
		 
		Log.d( TAG , "ShieldDexClassLoader getPackage name " + name );
		return super.getPackage( name );
	}

	@Override
	public String toString()
	{
		 
		return super.toString();
	}
	
	
}
