.class Les/dmoral/coloromatic/colormode/mode/RGB$3;
.super Ljava/lang/Object;
.source "RGB.java"

# interfaces
.implements Les/dmoral/coloromatic/colormode/Channel$ColorExtractor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Les/dmoral/coloromatic/colormode/mode/RGB;->getChannels()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Les/dmoral/coloromatic/colormode/mode/RGB;


# direct methods
.method constructor <init>(Les/dmoral/coloromatic/colormode/mode/RGB;)V
    .locals 0

    iput-object p1, p0, Les/dmoral/coloromatic/colormode/mode/RGB$3;->this$0:Les/dmoral/coloromatic/colormode/mode/RGB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extract(I)I
    .locals 0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    return p1
.end method
