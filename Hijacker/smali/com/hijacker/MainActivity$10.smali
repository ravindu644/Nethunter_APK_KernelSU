.class Lcom/hijacker/MainActivity$10;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/MainActivity;->refreshDrawer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hijacker/MainActivity;


# direct methods
.method constructor <init>(Lcom/hijacker/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/MainActivity$10;->this$0:Lcom/hijacker/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/hijacker/MainActivity$10;->this$0:Lcom/hijacker/MainActivity;

    iget-object p1, p1, Lcom/hijacker/MainActivity;->mDrawerLayout:Landroidx/drawerlayout/widget/DrawerLayout;

    iget-object v0, p0, Lcom/hijacker/MainActivity$10;->this$0:Lcom/hijacker/MainActivity;

    iget-object v0, v0, Lcom/hijacker/MainActivity;->navigationView:Lcom/google/android/material/navigation/NavigationView;

    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    return-void
.end method
