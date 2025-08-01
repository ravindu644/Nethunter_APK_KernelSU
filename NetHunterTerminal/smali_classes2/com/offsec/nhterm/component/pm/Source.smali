.class public Lcom/offsec/nhterm/component/pm/Source;
.super Ljava/lang/Object;
.source "Source.java"


# annotations
.annotation runtime Lcom/offsec/nhterm/framework/database/annotation/Table;
.end annotation


# instance fields
.field public enabled:Z

.field private id:I
    .annotation runtime Lcom/offsec/nhterm/framework/database/annotation/ID;
        autoIncrement = true
    .end annotation
.end field

.field public repo:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nhterm/component/pm/Source;->url:Ljava/lang/String;

    iput-object p2, p0, Lcom/offsec/nhterm/component/pm/Source;->repo:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/offsec/nhterm/component/pm/Source;->enabled:Z

    return-void
.end method
