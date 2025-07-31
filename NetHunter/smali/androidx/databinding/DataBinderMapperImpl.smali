.class public Landroidx/databinding/DataBinderMapperImpl;
.super Landroidx/databinding/MergedDataBinderMapper;
.source "DataBinderMapperImpl.java"


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/databinding/MergedDataBinderMapper;-><init>()V

    new-instance v0, Lcom/offsec/nethunter/DataBinderMapperImpl;

    invoke-direct {v0}, Lcom/offsec/nethunter/DataBinderMapperImpl;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/databinding/DataBinderMapperImpl;->addMapper(Landroidx/databinding/DataBinderMapper;)V

    return-void
.end method
