function Download() constructor {
    __id = downloadCreate();
    
    static add_header = function(_name, _value) {
        return downloadAddHeader(__id, _name, _value);
    }
    
    static start = function(_link, _filename) {
        return downloadFile(__id, _link, _filename);
    }
    
    static destoy = function() {
        return downloadDelete(__id);
    }
    
    static get_progress = function() {
        return downloadGetProgress(__id);
    }
    
    static is_complete = function() {
        return downloadIsComplete(__id);
    }
    
    static get_result = function() {
        return downloadGetResult(__id);
    }
}