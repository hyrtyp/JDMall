.class public Lcom/unionpay/upomp/bypay/activity/CardMainActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static a:Landroid/widget/Button;

.field public static a:Z


# instance fields
.field private a:Landroid/widget/ListView;

.field private a:Landroid/widget/RelativeLayout;

.field private a:Landroid/widget/TextView;

.field private a:[I

.field private a:[Ljava/lang/String;

.field private b:Landroid/widget/RelativeLayout;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/4 v2, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "icon"

    aput-object v1, v0, v4

    const-string v1, "cardname"

    aput-object v1, v0, v5

    const-string v1, "cardid"

    aput-object v1, v0, v6

    const-string v1, "status"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->a:[Ljava/lang/String;

    new-array v0, v2, [I

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "id"

    const-string v3, "iv_icon"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v4

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "id"

    const-string v3, "tv_cardname"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v5

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "id"

    const-string v3, "tv_cardid"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v6

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "id"

    const-string v3, "iv_status"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v7

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->a:[I

    return-void
.end method

.method static synthetic a(Lcom/unionpay/upomp/bypay/activity/CardMainActivity;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->a:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic a(Lcom/unionpay/upomp/bypay/activity/CardMainActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->a:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic a(Lcom/unionpay/upomp/bypay/activity/CardMainActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method private a()V
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0x8

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "tv_header"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "string"

    const-string v4, "upomp_bypay_cardmanage"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unionpay/upomp/bypay/util/Utils;->a(ILjava/lang/String;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "btn_addcard"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->a:Landroid/widget/Button;

    sget-object v0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "tv_no_cardbank"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->c:Landroid/widget/TextView;

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "rl_pay_alert_1_content"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->a:Landroid/widget/TextView;

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "rl_pay_alert_2_content"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "lv_cardlist"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->a:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "rl_no_cardbank"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->a:Landroid/widget/RelativeLayout;

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "id"

    const-string v2, "rl_cardlist"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->b:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    sget-boolean v0, Lcom/unionpay/upomp/bypay/other/eh;->k:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity$AsyncClass;

    invoke-direct {v0, p0}, Lcom/unionpay/upomp/bypay/activity/CardMainActivity$AsyncClass;-><init>(Lcom/unionpay/upomp/bypay/activity/CardMainActivity;)V

    new-array v1, v6, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/unionpay/upomp/bypay/activity/CardMainActivity$AsyncClass;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v2, "string"

    const-string v3, "upomp_bypay_cardmainactivity_firstlogin"

    invoke-static {v1, v2, v3}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unionpay/upomp/bypay/util/Utils;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput v0, Lcom/unionpay/upomp/bypay/other/eh;->q:I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    const-class v2, Lcom/unionpay/upomp/bypay/activity/LoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/unionpay/upomp/bypay/activity/CardMainActivity;)[I
    .locals 1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->a:[I

    return-object v0
.end method

.method static synthetic a(Lcom/unionpay/upomp/bypay/activity/CardMainActivity;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->a:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/unionpay/upomp/bypay/activity/CardMainActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->b:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic b(Lcom/unionpay/upomp/bypay/activity/CardMainActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->b:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget-object v2, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v3, "id"

    const-string v4, "btn_addcard"

    invoke-static {v2, v3, v4}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_0

    sget-boolean v1, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->a:Z

    if-eqz v1, :cond_1

    new-instance v0, Lcom/unionpay/upomp/bypay/activity/CardMainActivity$AsyncClass;

    invoke-direct {v0, p0}, Lcom/unionpay/upomp/bypay/activity/CardMainActivity$AsyncClass;-><init>(Lcom/unionpay/upomp/bypay/activity/CardMainActivity;)V

    new-array v1, v5, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/unionpay/upomp/bypay/activity/CardMainActivity$AsyncClass;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    :goto_0
    return-void

    :cond_1
    sput-byte v5, Lcom/unionpay/upomp/bypay/other/eh;->c:B

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    const-class v2, Lcom/unionpay/upomp/bypay/activity/AddCardActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x2

    sput v0, Lcom/unionpay/upomp/bypay/other/eh;->p:I

    sget-object v0, Lcom/unionpay/upomp/bypay/util/Utils;->a:Ljava/lang/String;

    const-string v1, "layout"

    const-string v2, "upomp_bypay_card_main"

    invoke-static {v0, v1, v2}, Lcom/unionpay/upomp/bypay/util/Utils;->getResourceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->setContentView(I)V

    sput-object p0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    sput-object p0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/unionpay/upomp/bypay/activity/CardMainActivity;->a()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    sput p3, Lcom/unionpay/upomp/bypay/other/eh;->e:I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    const-class v2, Lcom/unionpay/upomp/bypay/activity/CardInfoActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    sget-byte v0, Lcom/unionpay/upomp/bypay/other/eh;->b:B

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v3

    :pswitch_0
    invoke-static {}, Lcom/unionpay/upomp/bypay/util/Utils;->b()V

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    const-class v2, Lcom/unionpay/upomp/bypay/activity/AccountMainActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/content/Context;

    const-class v2, Lcom/unionpay/upomp/bypay/activity/GetpassActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    sget-object v1, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lcom/unionpay/upomp/bypay/other/eh;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/unionpay/upomp/bypay/other/eh;->c:Z

    return-void
.end method
