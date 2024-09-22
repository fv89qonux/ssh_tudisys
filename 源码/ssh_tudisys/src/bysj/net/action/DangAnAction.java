package bysj.net.action;

import java.text.SimpleDateFormat;
import java.util.*;
import bysj.net.model.*;
import bysj.net.manager.ObjectManager;
import com.opensymphony.xwork2.*;

import bysj.net.util.PageModel;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

@SuppressWarnings({ "unchecked", "serial" })
public class DangAnAction extends ActionSupport {
	private DangAn util;
	private PageModel<DangAn> pageModel;
	private List<User> listUser;
	private List<FenLei> listFenLei;
	private String errMsg;
	private String field;
	private String fieldValue;
	private ObjectManager objectManager;

	public String initUtil() throws Exception{
		listUser = objectManager.getUtil("from User");
		listFenLei = objectManager.getUtil("from FenLei");
		util = null;
		return "saveOrUpdate";
	}

	public String saveOrUpdateObject() throws Exception{
		
		if("".equals(util.getS_0()) || null == util.getS_0()){
			util.setS_0("BH"+ new SimpleDateFormat("hhmmsss").format(new Date()));
			util.setS_10("已分配");
		}
		
		objectManager.saveOrUpdateObject(util);
		util = null;
		errMsg = null;
		return getAllUtil();
	}


	public String deleteManyUtil() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		String ids[] = request.getParameterValues("id");
		DangAn util = null;
		for (String id : ids) {
			util = new DangAn();
			util.setId(Integer.parseInt(id));
			objectManager.deleteObject(util);
		}
		util = null;
		return getAllUtil();
	}	public String deleteUtil() throws Exception{
		objectManager.deleteObject(util);
		util = null;
		errMsg = null;
		return getAllUtil();
	}

	public String selectUtil() throws Exception{
		listUser = objectManager.getUtil("from User");
		listFenLei = objectManager.getUtil("from FenLei");
		util = (DangAn) objectManager.getObject(new DangAn(), util.getId());
		return "saveOrUpdate";
	}

	public String getAllUtil() throws Exception{
		Map session = ActionContext.getContext().getSession();
		String type = (String) session.get("type");
		String name = (String) session.get("name");
		int id = (Integer) session.get("id");
		if (null == pageModel) {
			pageModel = new PageModel<DangAn>();
		}
		if (0 == pageModel.getCurrentPageNo()) {
			pageModel.setCurrentPageNo(1);
		}
		StringBuilder _sql = new StringBuilder();
		_sql.append(" from DangAn where 1 = 1 ");
		if (!"admin".equals(type)) {
//			_sql.append(" and user.id = " + id);
		}
		if (null != field && field.trim().length() > 0) {
			fieldValue = new String(fieldValue.getBytes("iso-8859-1"), "utf-8");
			_sql.append(" and " + field + " like '%" + fieldValue + "%'");
		}
		
		JiLu jiLu = new JiLu();
		jiLu.setS_0(name);
		jiLu.setS_1(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));
		objectManager.saveOrUpdateObject(jiLu);
		
		pageModel = objectManager.getUtil(_sql.toString(), pageModel.getCurrentPageNo());
		errMsg = null;
		return "find";
	}

	public DangAn getUtil() {
		return util;
	}

	public void setUtil(DangAn util) {
		this.util = util;
	}

	public String getErrMsg() {
		return errMsg;
	}

	public void setErrMsg(String errMsg) {
		this.errMsg = errMsg;
	}

	public String getField() {
		return field;
	}

	public void setField(String field) {
		this.field = field;
	}

	public String getFieldValue() {
		return fieldValue;
	}

	public void setFieldValue(String fieldValue) {
		this.fieldValue = fieldValue;
	}

	public ObjectManager getObjectManager() {
		return objectManager;
	}

	public void setObjectManager(ObjectManager objectManager) {
		this.objectManager = objectManager;
	}

	public PageModel<DangAn> getPageModel() {
		return pageModel;
	}

	public void setPageModel(PageModel<DangAn> pageModel) {
		this.pageModel = pageModel;
	}

	public List<User> getListUser() {
		return listUser;
	}

	public void setListUser(List<User> listUser) {
		this.listUser = listUser;
	}

	public List<FenLei> getListFenLei() {
		return listFenLei;
	}

	public void setListFenLei(List<FenLei> listFenLei) {
		this.listFenLei = listFenLei;
	}

}
