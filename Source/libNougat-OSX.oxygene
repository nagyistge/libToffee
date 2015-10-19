<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<Project xmlns="http://schemas.microsoft.com/developer/msbuild/2003" DefaultTargets="Build" ToolsVersion="4.0">
    <PropertyGroup>
        <RootNamespace>RemObjects.Elements.System</RootNamespace>
        <ProjectGuid>104f50c3-3a92-4d03-919d-0de94acc0dbd</ProjectGuid>
        <OutputType>StaticLibrary</OutputType>
        <AssemblyName>Nougat</AssemblyName>
        <AllowLegacyOutParams>False</AllowLegacyOutParams>
        <AllowLegacyCreate>False</AllowLegacyCreate>
        <Configuration Condition="'$(Configuration)' == ''">Release</Configuration>
        <SDK>OS X</SDK>
        <DeploymentTargetVersion>10.6</DeploymentTargetVersion>
        <CreateHeaderFile>True</CreateHeaderFile>
        <Name>libNougat (OS X)</Name>
        <GenerateDebugInfo>True</GenerateDebugInfo>
        <DefineConstants>OSX;MACOS</DefineConstants>
    </PropertyGroup>
    <PropertyGroup Condition=" '$(Configuration)' == 'Debug' ">
        <Optimize>false</Optimize>
        <OutputPath>.\bin\Debug</OutputPath>
        <EnableAsserts>True</EnableAsserts>
        <TreatWarningsAsErrors>False</TreatWarningsAsErrors>
        <CaptureConsoleOutput>False</CaptureConsoleOutput>
        <WarnOnCaseMismatch>True</WarnOnCaseMismatch>
    </PropertyGroup>
    <PropertyGroup Condition=" '$(Configuration)' == 'Release' ">
        <Optimize>true</Optimize>
        <OutputPath>.\bin\Release</OutputPath>
        <EnableAsserts>False</EnableAsserts>
        <TreatWarningsAsErrors>False</TreatWarningsAsErrors>
        <CaptureConsoleOutput>False</CaptureConsoleOutput>
        <WarnOnCaseMismatch>True</WarnOnCaseMismatch>
    </PropertyGroup>
    <ItemGroup>
        <Reference Include="Foundation.fx"/>
        <Reference Include="rtl.fx"/>
    </ItemGroup>
    <ItemGroup/>
    <Import Project="$(MSBuildExtensionsPath)/RemObjects Software/Oxygene/RemObjects.Oxygene.Nougat.targets"/>
    <PropertyGroup>
        <PreBuildEvent/>
    </PropertyGroup>
    <Import Project="libNougat-Shared.projitems" Label="Shared"/>
</Project>