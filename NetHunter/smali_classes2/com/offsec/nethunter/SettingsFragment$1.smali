.class Lcom/offsec/nethunter/SettingsFragment$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/offsec/nethunter/SettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/offsec/nethunter/SettingsFragment;

.field final synthetic val$animation_dir:[Ljava/lang/String;

.field final synthetic val$rootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/offsec/nethunter/SettingsFragment;Landroid/view/View;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/offsec/nethunter/SettingsFragment$1;->this$0:Lcom/offsec/nethunter/SettingsFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/SettingsFragment$1;->val$rootView:Landroid/view/View;

    iput-object p3, p0, Lcom/offsec/nethunter/SettingsFragment$1;->val$animation_dir:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p2, p0, Lcom/offsec/nethunter/SettingsFragment$1;->val$rootView:Landroid/view/View;

    const p4, 0x7f0904c5

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/VideoView;

    iget-object p4, p0, Lcom/offsec/nethunter/SettingsFragment$1;->this$0:Lcom/offsec/nethunter/SettingsFragment;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/offsec/nethunter/SettingsFragment;->-$$Nest$fputselected_animation(Lcom/offsec/nethunter/SettingsFragment;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/SettingsFragment$1;->this$0:Lcom/offsec/nethunter/SettingsFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/SettingsFragment;->-$$Nest$fgetselected_animation(Lcom/offsec/nethunter/SettingsFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p3

    const/4 p4, 0x0

    const/4 p5, -0x1

    sparse-switch p3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p3, "Glitch"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p5, 0x4

    goto :goto_0

    :sswitch_1
    const-string p3, "Burning"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p5, 0x3

    goto :goto_0

    :sswitch_2
    const-string p3, "New Kali"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p5, 0x2

    goto :goto_0

    :sswitch_3
    const-string p3, "ctOS"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p5, 0x1

    goto :goto_0

    :sswitch_4
    const-string p3, "Classic"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 p5, 0x0

    :goto_0
    const-string p1, "android.resource://"

    packed-switch p5, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/SettingsFragment$1;->this$0:Lcom/offsec/nethunter/SettingsFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/SettingsFragment;->-$$Nest$fgetcontext(Lcom/offsec/nethunter/SettingsFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/2131755010"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/offsec/nethunter/SettingsFragment$1;->val$animation_dir:[Ljava/lang/String;

    const-string p2, "src_glitch"

    aput-object p2, p1, p4

    iget-object p1, p0, Lcom/offsec/nethunter/SettingsFragment$1;->this$0:Lcom/offsec/nethunter/SettingsFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/SettingsFragment;->-$$Nest$mbootanimation_start(Lcom/offsec/nethunter/SettingsFragment;)V

    goto/16 :goto_1

    :pswitch_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/SettingsFragment$1;->this$0:Lcom/offsec/nethunter/SettingsFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/SettingsFragment;->-$$Nest$fgetcontext(Lcom/offsec/nethunter/SettingsFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/2131755012"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/offsec/nethunter/SettingsFragment$1;->val$animation_dir:[Ljava/lang/String;

    const-string p2, "src_mk"

    aput-object p2, p1, p4

    iget-object p1, p0, Lcom/offsec/nethunter/SettingsFragment$1;->this$0:Lcom/offsec/nethunter/SettingsFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/SettingsFragment;->-$$Nest$mbootanimation_start(Lcom/offsec/nethunter/SettingsFragment;)V

    goto/16 :goto_1

    :pswitch_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/SettingsFragment$1;->this$0:Lcom/offsec/nethunter/SettingsFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/SettingsFragment;->-$$Nest$fgetcontext(Lcom/offsec/nethunter/SettingsFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/2131755011"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/offsec/nethunter/SettingsFragment$1;->val$animation_dir:[Ljava/lang/String;

    const-string p2, "src_kali"

    aput-object p2, p1, p4

    iget-object p1, p0, Lcom/offsec/nethunter/SettingsFragment$1;->this$0:Lcom/offsec/nethunter/SettingsFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/SettingsFragment;->-$$Nest$mbootanimation_start(Lcom/offsec/nethunter/SettingsFragment;)V

    goto :goto_1

    :pswitch_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/SettingsFragment$1;->this$0:Lcom/offsec/nethunter/SettingsFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/SettingsFragment;->-$$Nest$fgetcontext(Lcom/offsec/nethunter/SettingsFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/2131755009"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/offsec/nethunter/SettingsFragment$1;->val$animation_dir:[Ljava/lang/String;

    const-string p2, "src_ctos"

    aput-object p2, p1, p4

    iget-object p1, p0, Lcom/offsec/nethunter/SettingsFragment$1;->this$0:Lcom/offsec/nethunter/SettingsFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/SettingsFragment;->-$$Nest$mbootanimation_start(Lcom/offsec/nethunter/SettingsFragment;)V

    goto :goto_1

    :pswitch_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/offsec/nethunter/SettingsFragment$1;->this$0:Lcom/offsec/nethunter/SettingsFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/SettingsFragment;->-$$Nest$fgetcontext(Lcom/offsec/nethunter/SettingsFragment;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/2131755008"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/offsec/nethunter/SettingsFragment$1;->val$animation_dir:[Ljava/lang/String;

    const-string p2, "src"

    aput-object p2, p1, p4

    iget-object p1, p0, Lcom/offsec/nethunter/SettingsFragment$1;->this$0:Lcom/offsec/nethunter/SettingsFragment;

    invoke-static {p1}, Lcom/offsec/nethunter/SettingsFragment;->-$$Nest$mbootanimation_start(Lcom/offsec/nethunter/SettingsFragment;)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x69e62f8e -> :sswitch_4
        0x2ebe15 -> :sswitch_3
        0x52684013 -> :sswitch_2
        0x717c5793 -> :sswitch_1
        0x7f4b7955 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
