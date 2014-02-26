.class Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$2$1;
.super Ljava/lang/Object;
.source "MyAccountSecurityActivity.java"

# interfaces
.implements Lcom/jingdong/common/utils/CommonBase$BrowserUrlListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$2;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$2$1;->this$1:Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$2;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$2$1;)Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$2;
    .locals 1
    .parameter

    .prologue
    .line 138
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$2$1;->this$1:Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$2;

    return-object v0
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$2$1;->this$1:Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$2;

    #getter for: Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$2;->this$0:Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;
    invoke-static {v0}, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$2;->access$0(Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$2;)Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;

    move-result-object v0

    new-instance v1, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$2$1$1;

    invoke-direct {v1, p0, p1}, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$2$1$1;-><init>(Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity$2$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/jingdong/app/mall/personel/MyAccountSecurityActivity;->post(Ljava/lang/Runnable;)V

    .line 151
    return-void
.end method
