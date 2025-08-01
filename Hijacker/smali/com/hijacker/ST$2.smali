.class Lcom/hijacker/ST$2;
.super Ljava/lang/Object;
.source "ST.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/ST;->update(Ljava/lang/String;IIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hijacker/ST;


# direct methods
.method constructor <init>(Lcom/hijacker/ST;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/ST$2;->this$0:Lcom/hijacker/ST;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-static {}, Lcom/hijacker/Tile;->onCountsChanged()V

    return-void
.end method
